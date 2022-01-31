import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/res/palette.dart';

class MultiplayerButton extends ConsumerWidget {
  final UserData myInfo;
  const MultiplayerButton({
    Key? key,
    required this.myInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          ref.read(playerMatchingNotifierProvider.notifier).triggerMatching(
              myInfo: myInfo,
              numbers: [14, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 0, 15]);
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
