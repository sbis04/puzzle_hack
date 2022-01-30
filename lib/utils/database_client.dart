import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';
import 'package:my_flutter_puzzle/res/strings.dart';

class DatabaseClient {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addUser({required UserData userInfo}) async {
    final usersCollection =
        firestore.collection(Strings.usersCollectionName).doc(userInfo.uid);
    final userData = userInfo.toJson();

    await usersCollection
        .set(userData)
        .then((value) => log('User added: $userInfo'))
        .catchError((error) => log("Failed to add user: $error"));
  }
}
