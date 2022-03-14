import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';
import 'package:my_flutter_puzzle/res/strings.dart';

class DatabaseClient {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addUser({required EUserData userInfo}) async {
    final usersCollection =
        firestore.collection(Strings.usersCollectionName).doc(userInfo.uid);
    final userData = userInfo.toJson();

    await usersCollection
        .set(userData)
        .then((value) => log('User added: $userInfo'))
        .catchError((error) => log("Failed to add user: $error"));
  }

  Future<void> addPlayerToQueue({required EUserData userInfo}) async {
    final queueCollection =
        firestore.collection(Strings.queueCollectionName).doc(userInfo.uid);

    final userData = userInfo.toJson();

    userData.addEntries([
      const MapEntry('ismatched', false),
      MapEntry('timestamp', DateTime.now().millisecondsSinceEpoch),
    ]);

    await queueCollection
        .set(userData)
        .then((value) => log('User added to the queue: ${userInfo.uid}'))
        .catchError((error) => log("Failed to add user to the queue: $error"));
  }

  Future removeQueuedUser({required EUserData myInfo}) async {}

  Future<UserData?> findEarliestUser({required EUserData myInfo}) async {
    UserData? earliestUser;
    final queueCollection = firestore.collection(Strings.queueCollectionName);

    QuerySnapshot queueSnapshot = await queueCollection
        // .where('uid', isNotEqualTo: myInfo.uid)
        .orderBy('timestamp')
        .get();

    var queueDocs = queueSnapshot.docs;

    if (queueDocs.isNotEmpty) {
      for (var element in queueDocs) {
        final data = element.data() as Map<String, dynamic>;
        if (data['uid'] == myInfo.uid) {
          queueDocs.remove(element);
        }
      }
    }

    if (queueDocs.isNotEmpty) {
      queueDocs.first.data();

      earliestUser =
          UserData.fromJson(queueDocs.first.data() as Map<String, dynamic>);
    }

    return earliestUser;
  }

  Stream<DocumentSnapshot> isMatched({required EUserData myInfo}) {
    final queueCollectionDoc =
        firestore.collection(Strings.queueCollectionName).doc(myInfo.uid);

    return queueCollectionDoc.snapshots();
  }

  Future<String> foundMatch({required EUserData myInfo}) async {
    final queueCollectionDoc =
        firestore.collection(Strings.queueCollectionName).doc(myInfo.uid);

    final queueDoc = await queueCollectionDoc.get();

    final data = queueDoc.data() as Map<String, dynamic>;
    final id = data['id'] as String;

    await queueCollectionDoc.delete();

    return id;
  }

  /// Starting point method for player matching
  /// @param:
  /// * [myInfo]
  /// * [numbers]
  ///
  /// Returns the id as `String` (nullable).
  ///
  Future<String?> matchPlayers({
    required EUserData myInfo,
    required List<int> numbers,
  }) async {
    final userToBeMatched = await findEarliestUser(myInfo: myInfo);

    String? generatedId;

    if (userToBeMatched != null) {
      generatedId = '${myInfo.uid}-${userToBeMatched.uid}';

      final matchedCollection =
          firestore.collection(Strings.matchedCollectionName).doc(generatedId);

      Map<String, dynamic> data = {
        Strings.idFieldName: generatedId,
        Strings.myuidFieldName: myInfo.uid,
        Strings.otheruidFieldName: userToBeMatched.uid,
        Strings.mylistFieldName: numbers,
        Strings.otherlistFieldName: numbers,
        Strings.mymovesFieldName: 0,
        Strings.othermovesFieldName: 0,
      };

      await matchedCollection
          .set(data)
          .then((value) =>
              log('Matched: ${myInfo.uid} to ${userToBeMatched.uid}'))
          .catchError((error) => log("Failed match: $error"));

      final queueCollectionDoc = firestore
          .collection(Strings.queueCollectionName)
          .doc(userToBeMatched.uid);

      Map<String, dynamic> updateData = {
        'ismatched': true,
        'id': generatedId,
      };

      await queueCollectionDoc
          .update(updateData)
          .then((value) => log('Updated ismatch value: ${userToBeMatched.uid}'))
          .catchError((error) => log("Update ismatch failed: $error"));
    } else {
      await addPlayerToQueue(userInfo: myInfo);
    }

    return generatedId;
  }

  Stream<DocumentSnapshot> trackGameState({required String id}) {
    final matchedCollection =
        firestore.collection(Strings.matchedCollectionName).doc(id);

    return matchedCollection.snapshots();
  }

  Future<void> updateGameState({
    required String id,
    required UserData mydata,
    required List<int> numberList,
    required int moves,
  }) async {
    final matchedCollectionDoc =
        firestore.collection(Strings.matchedCollectionName).doc(id);

    final docSnapshot = await matchedCollectionDoc.get();

    final String myUid = docSnapshot.data()![Strings.myuidFieldName];
    final String otherUid = docSnapshot.data()![Strings.otheruidFieldName];
    final String currentUid = mydata.uid;

    if (myUid == currentUid) {
      Map<String, dynamic> data = {
        Strings.mylistFieldName: numberList,
        Strings.mymovesFieldName: moves,
      };

      await matchedCollectionDoc
          .update(data)
          .then((value) => log('Updated ${Strings.mylistFieldName} field'))
          .catchError((error) =>
              log("Failed to update ${Strings.mylistFieldName} field: $error"));
    } else if (otherUid == currentUid) {
      Map<String, dynamic> data = {
        Strings.otherlistFieldName: numberList,
        Strings.othermovesFieldName: moves,
      };

      await matchedCollectionDoc
          .update(data)
          .then((value) => log('Updated ${Strings.otherlistFieldName} field'))
          .catchError((error) => log(
              "Failed to update ${Strings.otherlistFieldName} field: $error"));
    }
  }
}
