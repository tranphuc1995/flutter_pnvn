import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_ekyc/controller/choose_document_controller.dart';
import 'package:pnvn_ekyc/generated_images.dart';
import 'package:pnvn_ekyc/l10n/generated/l10n.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ChooseDocumentScreen extends StatelessWidget {
  ChooseDocumentScreen({Key? key}) : super(key: key);

  final ChooseDocumentController _chooseDocumentController =
      ChooseDocumentController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
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
                padding: EdgeInsets.only(left: 24, top: 24 + height),
                child: SvgPicture.asset(Ic.icX)),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, bottom: 24, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 178,
                    width: double.infinity,
                    child: Image.asset(
                      Img.bgChooseDocument,
                      width: 178,
                      height: 112,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(S.of(context).confirmInfo,
                        style: FontUtils.getAppFont(
                            fontSize: 20,
                            textColor: AppColor.colorTitleNews,
                            fontWeight: FontWeight.w700)),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(S.of(context).choose,
                      textAlign: TextAlign.center,
                      style: FontUtils.getAppFont(
                          fontSize: 14,
                          textColor: AppColor.colorCategoryNews,
                          fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 64,
                  ),
                  _buildLayoutCard(context: context, isCmnd: true),
                  const SizedBox(
                    height: 24,
                  ),
                  _buildLayoutCard(context: context, isCmnd: false)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLayoutCard(
      {required BuildContext context, required bool isCmnd}) {
    return InkWell(
      onTap: () {
        _chooseDocumentController.moveToEkyc(isCMND: isCmnd);
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.primary),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              SvgPicture.asset(isCmnd ? Ic.icCmnd : Ic.icCccd),
              const SizedBox(
                height: 14,
              ),
              Text(isCmnd ? S.of(context).cmnd : S.of(context).cccd,
                  textAlign: TextAlign.center,
                  style: FontUtils.getAppFont(
                      fontSize: 18,
                      textColor: AppColor.primary,
                      fontWeight: FontWeight.w400)),
              const SizedBox(
                height: 24,
              ),
            ],
          )),
    );
  }
}
