import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PuzzleGameButton extends ConsumerWidget {
  const PuzzleGameButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.width,
    required this.padding,
  }) : super(key: key);

  final String text;
  final Function()? onTap;
  final double width;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.5);
              } else if (states.contains(MaterialState.disabled)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.5);
              }

              return Theme.of(context)
                  .colorScheme
                  .primary; // Use the component's default.
            },
          ),
        ),
        // style: ElevatedButton.styleFrom(
        //   onPrimary: Palette.blue,
        //   onSurface: Palette.blue,
        //   primary: Palette.blue,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(30),
        //   ),
        // ),
        onPressed: onTap,
        child: Padding(
          padding: padding,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withOpacity(onTap == null ? 0.6 : 1),
            ),
          ),
        ),
      ),
    );
  }
}
