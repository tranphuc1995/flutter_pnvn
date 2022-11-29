import 'package:app_settings/app_settings.dart';
import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:core/generated_images.dart';
import 'package:core/network/internet_handler.dart';
import 'package:core/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum BotttomSheetType {
  noNetwork,
  forceLogout,
  permissionCamera,
}

void showBottomSheetHelper({required BotttomSheetType botttomSheetType}) {
  if (botttomSheetType == BotttomSheetType.forceLogout) {
    showBtSheetHelper(
        content: 'Vui lòng đăng nhập lại',
        contentButton: 'Tôi đã hiểu',
        image: Img.imgForceLogout,
        isDismissible: false,
        press: () {
          forceLogout(isClearToken: true, isClearBiometric: true);
        },
        title: 'Phiên đăng nhập đã hết hạn');
  } else if (botttomSheetType == BotttomSheetType.permissionCamera) {
    showBtSheetHelper(
        content:
            'Bạn cần cho phép ứng dụng truy cập máy ảnh để tiếp tục sử dụng tính năng này.',
        contentButton: 'Mở cài đặt',
        image: Img.imgRequestCamera,
        isDismissible: true,
        press: () async {
          await AppSettings.openAppSettings();
        },
        title: 'Cho phép truy cập máy ảnh');
  } else if (botttomSheetType == BotttomSheetType.noNetwork) {
    showBtSheetHelper(
        content:
            ' Có vẻ kết nối mạng của bạn đã bị ngắt. Vui lòng kiểm tra kết nối và quay lại sau nhé.',
        contentButton: 'Tôi đã hiểu ',
        image: Img.imgNoInternet,
        isDismissible: true,
        press: () async {
          Get.back();
        },
        title: 'Mất kết nối mạng');
  }
}

void showBtSheetHelper(
    {required String image,
    required String title,
    required String content,
    required String contentButton,
    required VoidCallback press,
    required bool isDismissible}) {
  Get.bottomSheet(
      _contentBottomSheet(
          content: content,
          contentButton: contentButton,
          image: image,
          isDismissible: isDismissible,
          press: press,
          title: title),
      isDismissible: isDismissible);
}

Widget _contentBottomSheet(
    {required String image,
    required String title,
    required String content,
    required String contentButton,
    required VoidCallback press,
    required bool isDismissible}) {
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16))),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.only(right: 16),
          height: 57,
          width: double.infinity,
          child: Stack(
            children: [
              isDismissible
                  ? Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: SvgPicture.asset(Ic.icX)))
                  : Container(),
            ],
          ),
        ),
        const SizedBox(
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: [
              Image.asset(
                image,
                width: 80,
                height: 80,
              ),
              const SizedBox(
                height: 24,
              ),
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
              ButtonWidget(
                text: contentButton,
                press: press,
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
