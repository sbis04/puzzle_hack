import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/providers.dart';

class TimerTestScreen extends ConsumerWidget {
  const TimerTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(timerNotifierProvider);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(state),
          ElevatedButton(
            onPressed: () =>
                ref.read(timerNotifierProvider.notifier).startTimer(),
            child: Text('Start timer'),
          ),
          ElevatedButton(
            onPressed: () =>
                ref.read(timerNotifierProvider.notifier).stopTimer(),
            child: Text('Stop timer'),
          ),
        ],
      ),
    );
  }
}
