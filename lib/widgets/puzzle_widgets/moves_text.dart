import 'package:flutter/material.dart';

class MovesText extends StatelessWidget {
  const MovesText({
    Key? key,
    required int moves,
  })  : _moves = moves,
        super(key: key);

  final int _moves;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
      child: Text(
        '$_moves Moves',
        style: const TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}