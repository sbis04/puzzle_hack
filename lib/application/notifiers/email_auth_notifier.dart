import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/states/email_auth_state.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';
import 'package:my_flutter_puzzle/utils/authentication_client.dart';
import 'package:my_flutter_puzzle/utils/database_client.dart';

class EmailAuthNotifier extends StateNotifier<EmailAuthState> {
  final AuthenticationClient _authentication;
  final DatabaseClient _databaseClient;

  EmailAuthNotifier(this._authentication, this._databaseClient)
      : super(const EmailAuthState());

  signIn({required String email, required String password}) async {
    state = const EmailAuthState.processing();

    try {
      final user = await _authentication.signInUsingEmailPassword(
        email: email,
        password: password,
      );
      if (user != null) {
        state = EmailAuthState.done(user);
      }
      //  else {
      //   state = const EmailAuthState.error(
      //     message:
      //         'You don\'t have any account associated with this email, please register first.',
      //   );
      // }
    } catch (e) {
      state = EmailAuthState.error(message: e.toString());
    }
  }

  signUp({
    required String userName,
    required String email,
    required String password,
  }) async {
    state = const EmailAuthState.processing();

    try {
      final user = await _authentication.registerUsingEmailPassword(
        name: userName,
        email: email,
        password: password,
      );
      if (user != null) {
        state = const EmailAuthState.storingInfo();
        final userInfo = EUserData(
          uid: user.uid,
          username: userName,
          email: email,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        );
        await _databaseClient.addUser(userInfo: userInfo);
        state = EmailAuthState.storageDone(userInfo);
        state = EmailAuthState.done(user);
      }
    } catch (e) {
      state = EmailAuthState.error(message: e.toString());
    }
  }
}
