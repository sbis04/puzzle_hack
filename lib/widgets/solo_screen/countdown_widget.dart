import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountdownWidget extends ConsumerWidget {
  const CountdownWidget({
    required bool isStartPressed,
    required Function() onFinish,
    required int initialSpeed,
    Key? key,
  })  : _isStartPressed = isStartPressed,
        _onFinish = onFinish,
        _kInitialSpeed = initialSpeed,
        super(key: key);

  final bool _isStartPressed;
  final Function() _onFinish;
  final int _kInitialSpeed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Visibility(
      visible: _isStartPressed,
      child: SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 150.0,
            color: Colors.white,
            fontFamily: 'GoogleSans',
          ),
          child: AnimatedTextKit(
            // totalRepeatCount: 1,
            isRepeatingAnimation: false,
            pause: const Duration(milliseconds: 0),
            onFinished: _onFinish,
            animatedTexts: [
              RotateAnimatedText(
                '3',
                transitionHeight: 100 * 2.5,
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
                duration: Duration(milliseconds: _kInitialSpeed),
              ),
              RotateAnimatedText(
                '2',
                transitionHeight: 100 * 2.5,
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
                duration: Duration(milliseconds: _kInitialSpeed),
              ),
              RotateAnimatedText(
                '1',
                transitionHeight: 100 * 2.5,
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
                duration: Duration(milliseconds: _kInitialSpeed),
              ),
              RotateAnimatedText(
                'GO!',
                textStyle: const TextStyle(
                  fontSize: 120.0,
                  color: Colors.white,
                ),
                transitionHeight: 120 * 2.5,
                duration: Duration(milliseconds: _kInitialSpeed),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
