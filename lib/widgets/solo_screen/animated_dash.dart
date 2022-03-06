import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class AnimatedDash extends StatelessWidget {
  const AnimatedDash({
    Key? key,
    required this.boardSize,
    required Function(Artboard artboard) onInit,
    required RiveAnimationController riveController,
  })  : _riveController = riveController,
        _onInit = onInit,
        super(key: key);

  final double boardSize;
  final Function(Artboard artboard) _onInit;
  final RiveAnimationController _riveController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(right: 56.0, bottom: 56),
        child: SizedBox(
          width: boardSize * 0.75,
          height: boardSize * 0.75,
          child: RiveAnimation.asset(
            'assets/rive/dash.riv',
            fit: BoxFit.contain,
            antialiasing: true,
            controllers: [_riveController],
            onInit: _onInit,
          ),
        ),
      ),
    );
  }
}
