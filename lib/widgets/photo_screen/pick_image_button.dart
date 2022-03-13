import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PickImageButton extends ConsumerWidget {
  const PickImageButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.padding = const EdgeInsets.only(top: 13.0, bottom: 12.0),
    this.width = 145,
  }) : super(key: key);

  final String text;
  final Function()? onTap;
  final EdgeInsets padding;
  final double width;

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
