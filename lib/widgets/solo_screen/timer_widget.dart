import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/providers.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(timerNotifierProvider);

            return Text(
              state,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            );
          },
        ),
        const SizedBox(width: 8),
        const Icon(
          Icons.timer,
          color: Colors.white,
          size: 40,
        )
      ],
    );
  }
}
