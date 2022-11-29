import 'package:core/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showDialogNoInternet() {
  Get.defaultDialog(
      backgroundColor: Colors.white,
      radius: 10,
      title: '',
      titleStyle: const TextStyle(fontSize: 0),
      content: Column(
        children: [
          Container(
            child: ButtonWidget(
              text: 'Back',
              isActive: true,
              press: () {},
            ),
          ),
        ],
      ));
}
