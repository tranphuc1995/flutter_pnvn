import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_waiting_screen/controller/waiting_screen_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class WaitingScreen extends StatelessWidget {
  WaitingScreen({Key? key}) : super(key: key);
  final WaitingScreenController _waitingScreenController = Get.find();

  @override
  Widget build(BuildContext context) {
    AppConfig.statusBasHeight = MediaQuery.of(context).viewPadding.top;
    _waitingScreenController.initWaitingScreen();
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
