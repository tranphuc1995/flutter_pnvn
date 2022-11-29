import 'package:core/color/app_color.dart';
import 'package:flutter/material.dart';

const String fontFamily = 'google_sans';

class FontUtils {
  static TextStyle getAppFont({
    required double fontSize,
    required Color textColor,
    required FontWeight fontWeight,
  }) {
    return TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: textColor,
        fontWeight: fontWeight);
  }

  static TextStyle getAppFontGradient({
    required double fontSize,
    required FontWeight fontWeight,
  }) {
    var linearGradient = const LinearGradient(
      colors: <Color>[AppColor.colorButtonLeft, AppColor.colorButtonRight],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        foreground: Paint()..shader = linearGradient);
  }
}
