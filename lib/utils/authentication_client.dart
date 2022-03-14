import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationClient {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<User> signInAnonymously({required String name}) async {
    User? currentUser;

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInAnonymously();
      User? user = userCredential.user;

      if (user != null) {
        user.updateDisplayName(name);
        currentUser = user;
      } else {
        throw ('User is empty');
      }
    } catch (e) {
      throw (e.toString());
    }

    return currentUser;
  }

  User? getCurrentUser() {
    final user = auth.currentUser;
    return user;
  }

  Future<User?> signInUsingEmailPassword({
    required String email,
    required String password,
  }) async {
    User? user;

    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw('Wrong password provided.');
      }
    } catch (e) {
      throw (e.toString());
    }

    return user;
  }

  Future<User?> registerUsingEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      user = userCredential.user;
      await user!.updateDisplayName(name);
      await user.reload();
      user = auth.currentUser;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw('The account already exists for that email.');
      }
    } catch (e) {
      throw(e.toString());
    }

    return user;
  }
}
