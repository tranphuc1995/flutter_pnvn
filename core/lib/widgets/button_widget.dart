import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:core/color/app_color.dart';
import 'package:core/const/app_const.dart';
import 'package:core/fonts/font_utils.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String text;
  VoidCallback? press;
  bool isActive = true;
  bool isLoading = false;
  double heightButton = -1;
  double widthButton = -1;
  String? icon = '';
  TextStyle? styleText;
  BoxBorder? border;
  Color? colorBackgroundButton;
  TextStyle defaultStyle = FontUtils.getAppFont(
      fontSize: 16, textColor: AppColor.white, fontWeight: FontWeight.w700);

  //////////
  double radiusButton = 24;
  double fontSize = 20;
  Color loadingColor = AppColor.grey100;
  double sizeLoading = 30.0;

  ButtonWidget(
      {Key? key,
      required this.text,
      this.isActive = true,
      this.isLoading = false,
      this.heightButton = -1,
      this.widthButton = -1,
      this.press,
      this.colorBackgroundButton,
      this.styleText,
      this.icon,
      this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return _buildButtonLoading();
    } else {
      if (isActive) {
        return _buildButtonActive();
      } else {
        return _buildButtonNotActive();
      }
    }
  }

  Widget _buildButtonActive() {
    return InkWell(
      onTap: press,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
          alignment: Alignment.center,
          height: heightButton == -1 ? AppConst.kHeightButton : heightButton,
          width: widthButton == -1 ? double.infinity : widthButton,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  colorBackgroundButton ?? AppColor.colorButtonLeft,
                  colorBackgroundButton ?? AppColor.colorButtonRight,
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(radiusButton))),
          child: Text(
            text,
            // ignore: prefer_if_null_operators
            style: styleText == null
                ? FontUtils.getAppFont(
                    fontSize: 16,
                    textColor: AppColor.white,
                    fontWeight: FontWeight.w700)
                : styleText,
          )),
    );
  }

  Widget _buildButtonLoading() {
    return Container(
      alignment: Alignment.center,
      height: heightButton == -1 ? AppConst.kHeightButton : heightButton,
      width: widthButton == -1 ? double.infinity : widthButton,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColor.colorButtonLeft,
              AppColor.colorButtonRight,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(radiusButton))),
      child: SpinKitRing(
        color: AppColor.white,
        size: sizeLoading,
        lineWidth: 3,
      ),
    );
  }

  Widget _buildButtonNotActive() {
    return Container(
      alignment: Alignment.center,
      height: heightButton == -1 ? AppConst.kHeightButton : heightButton,
      width: widthButton == -1 ? double.infinity : widthButton,
      decoration: BoxDecoration(
          // ignore: prefer_if_null_operators
          border: border != null ? border : null,
          color: border == null ? AppColor.colorButtonDisable : AppColor.white,
          borderRadius: BorderRadius.all(Radius.circular(radiusButton))),
      child: Text(
        text,
        // ignore: prefer_if_null_operators
        style: FontUtils.getAppFont(
            fontSize: 16,
            textColor: AppColor.white,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
