import 'dart:ui';

import 'package:core/color/app_color.dart';

class InfoData {
  String title;
  String content;
  String icon;
  Color colorBackGround;
  InfoData(
      {required this.title,
      required this.content,
      required this.icon,
      this.colorBackGround = AppColor.neutral600});
}
