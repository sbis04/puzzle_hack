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
      }
    } catch (e) {
      throw (e.toString());
    }

    return currentUser!;
  }
}
