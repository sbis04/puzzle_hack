// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:my_flutter_puzzle/application/states/anonymous_auth_state.dart';
// import 'package:my_flutter_puzzle/providers.dart';
// import 'package:my_flutter_puzzle/res/palette.dart';
// import 'package:my_flutter_puzzle/screens/menu_screen.dart';
// import 'package:my_flutter_puzzle/screens/puzzle_screen.dart';
// import 'package:my_flutter_puzzle/widgets/login_widgets/start_game_widget/start_game_button.dart';

// class StartGameWidget extends ConsumerWidget {
//   const StartGameWidget({
//     Key? key,
//     required String nameString,
//   })  : _nameString = nameString,
//         super(key: key);

//   final String _nameString;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     ref.listen(anonymousAuthNotificationProvider, (previous, next) {
//       if (next is StorageDone) {
//         Navigator.of(context).pushAndRemoveUntil(
//           MaterialPageRoute(
//             builder: (context) => MenuScreen(
//               userData: next.userData,
//             ),
//           ),
//           (route) => false,
//         );
//       }
//     });

//     return Consumer(
//       builder: (context, ref, child) {
//         final state = ref.watch(anonymousAuthNotificationProvider);

//         return state.when(
//           () => StartGameButton(
//             nameString: _nameString,
//           ),
//           processing: () => const CircularProgressIndicator(
//             valueColor: AlwaysStoppedAnimation<Color>(Palette.violet),
//           ),
//           done: (_) => const CircularProgressIndicator(
//             valueColor: AlwaysStoppedAnimation<Color>(Palette.violet),
//           ),
//           storingInfo: () => const CircularProgressIndicator(
//             valueColor: AlwaysStoppedAnimation<Color>(Palette.violet),
//           ),
//           storageDone: (userData) => const Icon(
//             Icons.check,
//             size: 50,
//             color: Palette.violet,
//           ),
//           // done: (_) => const Icon(
//           //   Icons.check,
//           //   size: 50,
//           //   color: Palette.violet,
//           // ),
//           error: (message) => Column(
//             children: [
//               Text('$message'),
//               const SizedBox(height: 16),
//               StartGameButton(nameString: _nameString),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
