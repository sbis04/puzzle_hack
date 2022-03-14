import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/notifiers/image_splitter_notifier.dart';
import 'package:my_flutter_puzzle/application/notifiers/login_register_notifier.dart';
import 'package:my_flutter_puzzle/application/notifiers/player_matching_notifier.dart';
import 'package:my_flutter_puzzle/application/notifiers/puzzle_notifier.dart';
import 'package:my_flutter_puzzle/application/notifiers/puzzle_type_notifier.dart';
import 'package:my_flutter_puzzle/application/states/image_splitter_state.dart';
import 'package:my_flutter_puzzle/application/states/player_matching_state.dart';
import 'package:my_flutter_puzzle/application/states/puzzle_state.dart';
import 'package:my_flutter_puzzle/utils/database_client.dart';
import 'package:my_flutter_puzzle/utils/image_splitter.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';

import 'application/notifiers/anonymous_auth_notifier.dart';
import 'application/notifiers/email_auth_notifier.dart';
import 'application/notifiers/timer_notifier.dart';
import 'application/states/anonymous_auth_state.dart';
import 'application/states/email_auth_state.dart';
import 'utils/authentication_client.dart';

final authenticationClientProvider = Provider.autoDispose<AuthenticationClient>(
  (ref) => AuthenticationClient(),
);

final databaseClientProvider = Provider.autoDispose<DatabaseClient>(
  (ref) => DatabaseClient(),
);

final imageSplitterProvider = Provider<ImageSplitter>(
  (ref) => ImageSplitter(),
);

// final solverClientProvider = Provider<PuzzleSolverClient>(
//   (ref) => PuzzleSolverClient(),
// );

// final anonymousAuthNotificationProvider = StateNotifierProvider.autoDispose<
//     AnonymousAuthNotifier, AnonymousAuthState>(
//   (ref) => AnonymousAuthNotifier(
//     ref.watch(authenticationClientProvider),
//     ref.watch(databaseClientProvider),
//   ),
// );

final playerMatchingNotifierProvider = StateNotifierProvider.autoDispose<
    PlayerMatchingNotifier, PlayerMatchingState>(
  (ref) => PlayerMatchingNotifier(ref.watch(databaseClientProvider)),
);

final puzzleNotifierProvider = StateNotifierProvider.family<PuzzleNotifier,
    PuzzleState, PuzzleSolverClient>(
  (ref, solverClient) => PuzzleNotifier(solverClient),
);

final imageSplitterNotifierProvider =
    StateNotifierProvider<ImageSplitterNotifier, ImageSplitterState>(
  (ref) => ImageSplitterNotifier(
    ref.watch(imageSplitterProvider),
  ),
);

final timerNotifierProvider = StateNotifierProvider<TimerNotifier, String>(
  ((ref) => TimerNotifier()),
);

final puzzleTypeNotifierProvider =
    StateNotifierProvider<PuzzleTypeNotifier, PuzzleType>(
  (ref) => PuzzleTypeNotifier(),
);

final isLoginNotifier = StateNotifierProvider<IsLoginNotifier, bool>(
  (ref) => IsLoginNotifier(),
);

final emailAuthNotificationProvider =
    StateNotifierProvider.autoDispose<EmailAuthNotifier, EmailAuthState>(
  (ref) => EmailAuthNotifier(
    ref.watch(authenticationClientProvider),
    ref.watch(databaseClientProvider),
  ),
);

// EXAMPLE of StateProvider
// ----------------------------
// final selectedProductIdProvider = StateProvider<String?>((ref) => null);
// final productsProvider = StateNotifierProvider<ProductsNotifier, List<Product>>((ref) => ProductsNotifier());

// Widget build(BuildContext context, WidgetRef ref) {
//   final List<Product> products = ref.watch(productsProvider);
//   final selectedProductId = ref.watch(selectedProductIdProvider);

//   return ListView(
//     children: [
//       for (final product in products)
//         GestureDetector(
//           onTap: () => ref.read(selectedProductIdProvider.notifier).state = product.id,
//           child: ProductItem(
//             product: product,
//             isSelected: selectedProductId.state == product.id,
//           ),
//         ),
//     ],
//   );
// }
// ----------------------------
