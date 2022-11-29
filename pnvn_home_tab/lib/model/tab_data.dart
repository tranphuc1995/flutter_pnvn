import 'package:flutter/material.dart';

class TabData {
  String title;
  Color colorTitle;
  String icon;
  TextStyle style;
  bool isShowRedDot;
  TabData(
      {required this.title,
      required this.colorTitle,
      this.icon = '',
      required this.style,
      required this.isShowRedDot});
}
