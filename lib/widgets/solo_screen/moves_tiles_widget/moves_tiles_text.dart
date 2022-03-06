import 'package:flutter/material.dart';

class MovesTilesText extends StatelessWidget {
  final int moves;
  final int tiles;

  const MovesTilesText({
    Key? key,
    required this.moves,
    required this.tiles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 24,
          // fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: moves.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(text: ' Moves | '),
          TextSpan(
            text: tiles.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(text: ' Tiles'),
        ],
      ),
    );
  }
}