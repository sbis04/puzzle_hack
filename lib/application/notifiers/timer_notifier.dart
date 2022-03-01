import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimerNotifier extends StateNotifier<String> {
  TimerNotifier() : super('00:00:00');

  Timer? _timer;
  final _stopwatch = Stopwatch();

  @override
  void dispose() {
    _stopwatch.stop();
    _timer?.cancel();
    super.dispose();
  }

  startTimer() {
    _stopwatch.start();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state = getDurationString(_stopwatch.elapsed);
    });
  }

  stopTimer() {
    _stopwatch.stop();
    _stopwatch.reset();
    state = getDurationString(_stopwatch.elapsed);
    _timer?.cancel();
  }

  String getDurationString(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}
