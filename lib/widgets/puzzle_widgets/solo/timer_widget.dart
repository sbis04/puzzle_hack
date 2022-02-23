import 'dart:async';

import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({
    Key? key,
    required this.fontSize,
    required this.color,
  }) : super(key: key);

  final double fontSize;
  final Color color;

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late final Timer _timer;
  int _start = 0;

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) => setState(() => _start++),
    );
  }

  String printDuration() {
    var duration = Duration(seconds: _start);
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            printDuration(),
            style: TextStyle(
              fontSize: widget.fontSize,
              color: widget.color,
            ),
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.timer,
            color: widget.color,
            size: widget.fontSize * 1.3,
          )
        ],
      ),
    );
  }
}
