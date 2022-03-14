import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/res/palette.dart';

class MultiplayerButton extends ConsumerStatefulWidget {
  const MultiplayerButton({
    Key? key,
    required this.myInfo,
    required this.list,
  }) : super(key: key);

  final UserData myInfo;
  final List<int> list;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MultiplayerButtonState();
}

class _MultiplayerButtonState extends ConsumerState<MultiplayerButton> {
  late final List<int> numberList;

  @override
  void initState() {
    super.initState();
    numberList = widget.list;
    numberList.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Palette.violet,
          onSurface: Palette.violet,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: const BorderSide(
            width: 2,
            color: Palette.violet,
          ),
        ),
        onPressed: () {
          // ref
          //     .read(playerMatchingNotifierProvider.notifier)
          //     .triggerMatching(myInfo: widget.myInfo, numbers: numberList);
        },
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Multiplayer',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}

// class MultiplayerButton extends StatefulWidget {
//   final UserData myInfo;
//   MultiplayerButton({
//     Key? key,
//     required this.myInfo,
//   }) : super(key: key);

//   @override
//   State<MultiplayerButton> createState() => _MultiplayerButtonState();
// }

// class _MultiplayerButtonState extends State<MultiplayerButton> {
//   final numberList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.maxFinite,
//       child: OutlinedButton(
//         style: OutlinedButton.styleFrom(
//           primary: Palette.violet,
//           onSurface: Palette.violet,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(50),
//           ),
//           side: const BorderSide(
//             width: 2,
//             color: Palette.violet,
//           ),
//         ),
//         onPressed: () {
//           ref.read(playerMatchingNotifierProvider.notifier).triggerMatching(
//               myInfo: widget.myInfo,
//               numbers: [14, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 0, 15]);
//         },
//         child: const Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Text(
//             'Multiplayer',
//             style: TextStyle(fontSize: 22),
//           ),
//         ),
//       ),
//     );
//   }
// }
