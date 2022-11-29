import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pnvn_ekyc/controller/confirm_controller.dart';
import 'package:pnvn_ekyc/generated_images.dart';
import 'package:pnvn_ekyc/l10n/generated/l10n.dart';
import 'package:pnvn_ekyc/model/ocr_data.dart';
import 'package:pnvn_ekyc/widgets/info_widget.dart';

// ignore: must_be_immutable
class ConfirmScreen extends StatelessWidget {
  ConfirmScreen({Key? key}) : super(key: key);
  var ocrData = Get.arguments as OcrData;
  final ConfirmController _confirmController = ConfirmController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    _confirmController.ocrData = ocrData;
    _confirmController.showData(context: context, isCMND: ocrData.isCMND);
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 50,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ButtonWidget(
                      press: () {
                        Get.back();
                      },
                      text: S.of(context).remake,
                      colorBackgroundButton: AppColor.accent,
                      styleText: FontUtils.getAppFont(
                          fontSize: 16,
                          textColor: AppColor.primary,
                          fontWeight: FontWeight.w700)),
                )),
            Expanded(
                flex: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Obx(() => ButtonWidget(
                        isLoading: _confirmController.isLoadingButton.value,
                        press: () {
                          _confirmController.uploadDataToServer(
                              ocrData: ocrData);
                        },
                        text: S.of(context).confirm,
                      )),
                ))
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.only(top: 16 + height),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 29),
                          child: SvgPicture.asset(Ic.icX))),
                  Align(
                    alignment: Alignment.center,
                    child: Text(S.of(context).confirmInfoAgain,
                        style: FontUtils.getAppFont(
                            fontSize: 18,
                            textColor: AppColor.colorTitleNews,
                            fontWeight: FontWeight.w700)),
                  )
                ]),
              ),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
                ocrData.isCMND
                    ? S.of(context).infoCmnd
                    : S.of(context).infoCccd,
                style: FontUtils.getAppFont(
                    fontSize: 18,
                    textColor: AppColor.colorTitleNews,
                    fontWeight: FontWeight.w700)),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() => Column(
                      children: _confirmController.infoDatas
                          .map((infoData) => InfoWidget(infoData: infoData))
                          .toList(),
                    ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
