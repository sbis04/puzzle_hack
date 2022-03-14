// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:my_flutter_puzzle/providers.dart';
// import 'package:my_flutter_puzzle/res/palette.dart';

// class StartGameButton extends ConsumerWidget {
//   const StartGameButton({
//     Key? key,
//     required String nameString,
//   })  : _nameString = nameString,
//         super(key: key);

//   final String _nameString;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return SizedBox(
//       width: double.maxFinite,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           primary: Palette.violet,
//           onSurface: Palette.violet,
//         ),
//         onPressed: _nameString.isEmpty || _nameString.length < 3
//             ? null
//             : () => ref
//                 .read(anonymousAuthNotificationProvider.notifier)
//                 .triggerAnonymousLogin(name: _nameString),
//         child: const Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Text(
//             'Start game',
//             style: TextStyle(fontSize: 22),
//           ),
//         ),
//       ),
//     );
//   }
// }
