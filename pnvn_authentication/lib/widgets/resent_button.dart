import 'dart:async';

import 'package:core/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../l10n/generated/l10n.dart';

class ResentButton extends StatefulWidget {
  final int expired;
  final VoidCallback press;
  const ResentButton({Key? key, required this.press, required this.expired})
      : super(key: key);

  @override
  _ResentButtonState createState() => _ResentButtonState();
}

class _ResentButtonState extends State<ResentButton> {
  late Timer _timer;
  late int _start;

  void startTimer() {
    _start = widget.expired;
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
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
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (_start > 0) {
          return;
        }
        startTimer();
        widget.press();
      },
      child: Text(
          _start == 0
              ? S.of(context).resend_code
              : 'Gửi lại mã sau: $_start giây',
          style: const TextStyle(
              color: AppColor.primary, fontWeight: FontWeight.bold)),
    );
  }
}
