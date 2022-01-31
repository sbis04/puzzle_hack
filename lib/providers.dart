import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/notifiers/player_matching_notifier.dart';
import 'package:my_flutter_puzzle/application/states/player_matching_state.dart';
import 'package:my_flutter_puzzle/utils/database_client.dart';

import 'application/notifiers/anonymous_auth_notifier.dart';
import 'application/states/anonymous_auth_state.dart';
import 'utils/authentication_client.dart';

final authenticationClientProvider = Provider<AuthenticationClient>(
  (ref) => AuthenticationClient(),
);

final databaseClientProvider = Provider<DatabaseClient>(
  (ref) => DatabaseClient(),
);

final anonymousAuthNotificationProvider = StateNotifierProvider.autoDispose<
    AnonymousAuthNotifier, AnonymousAuthState>(
  (ref) => AnonymousAuthNotifier(
    ref.watch(authenticationClientProvider),
    ref.watch(databaseClientProvider),
  ),
);

final playerMatchingNotifierProvider = StateNotifierProvider.autoDispose<
    PlayerMatchingNotifier, PlayerMatchingState>(
  (ref) => PlayerMatchingNotifier(ref.watch(databaseClientProvider)),
);
