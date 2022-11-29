import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentChooseWidget extends StatelessWidget {
  String content;
  ContentChooseWidget({required this.content});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back(result: content);
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(content,
                style: FontUtils.getAppFont(
                    fontSize: 16,
                    textColor: AppColor.colorTitleNews,
                    fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
