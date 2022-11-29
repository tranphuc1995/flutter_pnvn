import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_home_page/generated_images.dart';
import 'package:get/get.dart';
import 'package:pnvn_home_page/l10n/generated/l10n.dart';

class ComingSoonBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 355,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 16),
            height: 57,
            width: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(S.of(context).coming_soon,
                      style: FontUtils.getAppFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          textColor: AppColor.colorTitleBottomSheet)),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(Ic.icX))),
              ],
            ),
          ),
          Container(
              height: 1, width: double.infinity, color: AppColor.borderColor),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Image.asset(
                  Img.bgComingSoon,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(S.of(context).content_coming_soon,
                    textAlign: TextAlign.center,
                    style: FontUtils.getAppFont(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        textColor: AppColor.colorTitleNews)),
                const SizedBox(
                  height: 40,
                ),
                ButtonWidget(
                  text: S.of(context).understand,
                  press: () {
                    Get.back();
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
