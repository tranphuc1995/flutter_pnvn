import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

import '../fonts/font_utils.dart';

void showDialogHelper(
    {required BuildContext context,
    required String title,
    required String content,
    required String contentButtonLeft,
    required String contentButtonRight,
    required VoidCallback pressButtonLeft,
    required VoidCallback pressButtonRight}) {
  AwesomeDialog(
    context: context,
    isDense: true,
    dialogType: DialogType.NO_HEADER,
    animType: AnimType.SCALE,
    body: Container(
      padding: const EdgeInsets.all(24),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              textAlign: TextAlign.center,
              style: FontUtils.getAppFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  textColor: AppColor.colorTitleNews)),
          const SizedBox(
            height: 8,
          ),
          Text(content,
              textAlign: TextAlign.center,
              style: FontUtils.getAppFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  textColor: AppColor.colorTitleNews)),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                  flex: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: ButtonWidget(
                      text: contentButtonLeft,
                      press: pressButtonLeft,
                      styleText: FontUtils.getAppFont(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          textColor: AppColor.primary),
                      colorBackgroundButton: AppColor.accent,
                    ),
                  )),
              Expanded(
                  flex: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: ButtonWidget(
                      text: contentButtonRight,
                      press: pressButtonRight,
                    ),
                  ))
            ],
          )
        ],
      ),
    ),
  ).show();
}
