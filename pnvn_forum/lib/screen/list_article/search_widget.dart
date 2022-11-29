import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_forum/generated_images.dart';
import 'package:get/get.dart';

class SearchWidget extends StatelessWidget {
  String currentSearch;
  SearchWidget({required this.currentSearch});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        Get.back();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          children: [
            SvgPicture.asset(Ic.icBack),
            const SizedBox(
              width: 11,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                    left: 16, right: 16, bottom: 12, top: 12),
                decoration: const BoxDecoration(
                    color: AppColor.borderColor,
                    borderRadius: BorderRadius.all(Radius.circular(24))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      Ic.icSearch,
                      width: 18,
                      height: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        currentSearch,
                        style: FontUtils.getAppFont(
                            fontSize: 14,
                            textColor: AppColor.colorTitleNews,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
