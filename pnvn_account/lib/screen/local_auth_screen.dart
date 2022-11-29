
import 'dart:io';

import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pnvn_account/controller/local_auth_controller.dart';
import 'package:pnvn_account/generated_images.dart';
import 'package:pnvn_account/l10n/generated/l10n.dart';
import 'package:get/get.dart';

class LocalAuthScreen extends StatelessWidget {
  final LocalAuthController _localAuthController = LocalAuthController();
  @override
  Widget build(BuildContext context) {
    _localAuthController.initSwitch();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: AppConfig.statusBasHeight + 16, right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(Ic.icArrowBackLeft))),
                Align(
                  alignment: Alignment.center,
                  child: Text(S.of(context).local_auth,
                      style: FontUtils.getAppFont(
                          fontSize: 18,
                          textColor: AppColor.colorTitleNews,
                          fontWeight: FontWeight.w700)),
                )
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColor.neutral600,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(Ic.icLocalAuth),
                      const SizedBox(
                        width: 14,
                      ),
                      Text(
                          Platform.isAndroid
                              ? S.of(context).auth_finger
                              : S.of(context).auth_face,
                          style: FontUtils.getAppFont(
                              fontSize: 16,
                              textColor: AppColor.colorTitleNews,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                  Obx(() => InkWell(
                        onTap: () {
                          _localAuthController.showBottomSheetConfirm();
                        },
                        child: AbsorbPointer(
                          ignoringSemantics: true,
                          child: Switch(
                            value: _localAuthController.isActiveSwitch.value,
                            onChanged: (value) {},
                            activeTrackColor: AppColor.colorActiveSwitch,
                            activeColor: AppColor.colorNotActiveSwitch,
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
