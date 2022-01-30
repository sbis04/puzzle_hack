import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/states/anonymous_auth_state.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';
import 'package:my_flutter_puzzle/utils/authentication_client.dart';
import 'package:my_flutter_puzzle/utils/database_client.dart';

class AnonymousAuthNotifier extends StateNotifier<AnonymousAuthState> {
  final AuthenticationClient _authentication;
  final DatabaseClient _databaseClient;

  AnonymousAuthNotifier(this._authentication, this._databaseClient)
      : super(const AnonymousAuthState());

  triggerAnonymousLogin({required String name}) async {
    state = const AnonymousAuthState.processing();

    try {
      final user = await _authentication.signInAnonymously(name: name);
      state = AnonymousAuthState.done(user);
      state = const AnonymousAuthState.storingInfo();
      final userData = UserData(
        uid: user.uid,
        name: user.displayName!,
        username: '${user.displayName!.split(' ')[0].toLowerCase()}@${user.uid}',
        timestamp: DateTime.now().millisecondsSinceEpoch,
      );
      await _databaseClient.addUser(userInfo: userData);
      state = AnonymousAuthState.storageDone(userData);
    } catch (e) {
      state = AnonymousAuthState.error(message: e.toString());
    }
  }
}
