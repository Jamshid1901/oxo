import 'dart:async';

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final TextStyle style;
  final ValueChanged<bool> isDisabled;
  const Counter({Key? key, required this.style, required this.isDisabled})
      : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late Timer _timer;
  int _start = 120;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            widget.isDisabled(true);
          });
        } else {
          setState(() {
            widget.isDisabled(false);
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '${_start}s',
      style: widget.style,
    );
  }
}
