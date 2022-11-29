import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:core/router/deeplink_constant.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_home_page/generated_images.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CardWidget extends StatelessWidget {
  int typeCard;
  bool isLoading;
  CardWidget({required this.typeCard, required this.isLoading});
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? AppShimmer.buildShimmerRectangel(
            height: 188, width: double.infinity, radius: 16)
        : InkWell(
            onTap: () {
              if (typeCard == 1) {
                Get.toNamed(DeeplinkConstant.viewInfoEkyc);
              } else if (typeCard == 0) {
                Get.toNamed(DeeplinkConstant.chooseDocument);
              }
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Stack(children: [
                  Image.asset(getBgCard(),
                      width: double.infinity, fit: BoxFit.cover),
                  Positioned(
                    top: 30,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(getContentTopCard(),
                            style: FontUtils.getAppFont(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                textColor: AppColor.white)),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Text(getContentMiddleCard(),
                              style: FontUtils.getAppFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppColor.colorHomeCard1)),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 30,
                    right: 30,
                    bottom: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(getContentBottomCard(),
                              style: FontUtils.getAppFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  textColor: AppColor.white)),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.white.withOpacity(0.2)),
                            ),
                            SvgPicture.asset(Ic.icArrowRight)
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
          );
  }

  String getBgCard() {
    var result = '';
    if (typeCard == 0) {
      result = Img.bg_0;
    } else {
      result = Img.bg_1;
    }
    return result;
  }

  String getContentMiddleCard() {
    var result = '';
    if (typeCard == 0) {
      result = 'Chưa xác thực';
    } else {
      result = 'Đã xác thực';
    }
    return result;
  }

  String getContentTopCard() {
    var result = '';
    if (typeCard == 0) {
      result = 'Xác thực thông tin';
    } else {
      result = 'Xác thực thông tin';
    }
    return result;
  }

  String getContentBottomCard() {
    var result = '';
    if (typeCard == 0) {
      result = 'Xác thực ngay';
    } else {
      result = 'Xem thông tin';
    }
    return result;
  }

  Color getColorMiddleText() {
    var result = Colors.transparent;
    if (typeCard == 0) {
      result = AppColor.colorHomeCard1;
    } else {
      result = AppColor.colorHomeCard2;
    }
    return result;
  }
}
