import 'package:flutter/material.dart';

class PlayerText extends StatelessWidget {
  final String displayName;

  const PlayerText({
    Key? key,
    required this.displayName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Text(
        displayName,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFF14407a),
          letterSpacing: 2,
        ),
      ),
    );
  }
}
