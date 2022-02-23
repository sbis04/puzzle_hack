import 'package:flutter/material.dart';

class MovesText extends StatelessWidget {
  const MovesText({
    Key? key,
    required int moves,
    required this.fontSize,
  })  : _moves = moves,
        super(key: key);

  final int _moves;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
      child: Text(
        '$_moves Moves',
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
