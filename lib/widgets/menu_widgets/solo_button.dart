import 'package:flutter/material.dart';
import 'package:my_flutter_puzzle/res/palette.dart';

class SoloButton extends StatelessWidget {
  const SoloButton({
    Key? key,
  }) : super(key: key);

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
          // TODO: Naviagte to solo screen
        },
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Solo',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
