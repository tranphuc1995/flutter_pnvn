import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:core/router/deeplink_constant.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_account/generated_images.dart';
import 'package:pnvn_account/l10n/generated/l10n.dart';
import 'package:get/get.dart';

class IdentityWidget extends StatelessWidget {
  bool isIdentity;
  bool isLoading;
  IdentityWidget({Key? key, required this.isIdentity, required this.isLoading})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isIdentity) {
          Get.toNamed(DeeplinkConstant.viewInfoEkyc);
        } else {
          Get.toNamed(DeeplinkConstant.chooseDocument);
        }
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, right: 18, top: 19, bottom: 19),
        decoration: const BoxDecoration(
          color: AppColor.neutral600,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              SvgPicture.asset(Ic.icIdentity),
              const SizedBox(
                width: 14,
              ),
              Text(S.of(context).identityTitle,
                  style: FontUtils.getAppFont(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      textColor: AppColor.colorTitleNews)),
            ],
          ),
          Row(
            children: [
              isLoading
                  ? AppShimmer.buildShimmerRectangel(height: 18, width: 80)
                  : Container(
                      padding: const EdgeInsets.only(
                          left: 6, right: 6, top: 2, bottom: 2),
                      decoration: BoxDecoration(
                        color: isIdentity
                            ? AppColor.colorBgIdentity
                            : AppColor.colorBgNotIdentity,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(24)),
                      ),
                      child: Text(
                          isIdentity
                              ? S.of(context).identity
                              : S.of(context).not_identity,
                          style: FontUtils.getAppFont(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              textColor: isIdentity
                                  ? AppColor.colorIdentity
                                  : AppColor.warning)),
                    ),
              const SizedBox(
                width: 18,
              ),
              SvgPicture.asset(Ic.icArrowRight),
            ],
          )
        ]),
      ),
    );
  }
}
