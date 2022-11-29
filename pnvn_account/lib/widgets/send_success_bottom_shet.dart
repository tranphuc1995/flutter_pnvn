import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_account/generated_images.dart';
import 'package:pnvn_account/l10n/generated/l10n.dart';

class SendSuccessBottomSheet extends StatelessWidget {
  const SendSuccessBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 25, top: 18),
            width: double.infinity,
            child: Stack(
              children: [
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
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Image.asset(
                  Img.imgThanks,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(S.of(context).thanks,
                    textAlign: TextAlign.center,
                    style: FontUtils.getAppFont(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        textColor: AppColor.colorTitleNews)),
                const SizedBox(
                  height: 8,
                ),
                Text(S.of(context).thnaks_content,
                    textAlign: TextAlign.center,
                    style: FontUtils.getAppFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: AppColor.colorTitleNews)),
                const SizedBox(
                  height: 24,
                ),
                ButtonWidget(
                  text: S.of(context).close,
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
