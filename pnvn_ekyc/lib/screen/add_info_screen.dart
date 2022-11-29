import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pnvn_ekyc/controller/add_info_controller.dart';
import 'package:pnvn_ekyc/generated_images.dart';
import 'package:pnvn_ekyc/l10n/generated/l10n.dart';
import 'package:pnvn_ekyc/model/info_data.dart';
import 'package:pnvn_ekyc/model/ocr_data.dart';
import 'package:pnvn_ekyc/widgets/choose_content_bottom_sheet.dart';
import 'package:pnvn_ekyc/widgets/info_input_widget.dart';
import 'package:pnvn_ekyc/widgets/info_widget.dart';

// ignore: must_be_immutable
class AddInfoScreen extends StatelessWidget {
  AddInfoScreen({Key? key}) : super(key: key);
  final AddInfoController _addInfoController = AddInfoController();

  var ocrData = Get.arguments as OcrData;

  @override
  Widget build(BuildContext context) {
    _addInfoController.isCMND = ocrData.isCMND;
    var height = MediaQuery.of(context).viewPadding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: Obx(() => ButtonWidget(
              isLoading: _addInfoController.isLoadingButton.value,
              isActive: _addInfoController.isActiveButton.value,
              text: S.of(context).complete,
              press: () {
                _addInfoController.uploadDataToServer(ocrData: ocrData);
              },
            )),
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
                    child: Text(S.of(context).add_info,
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
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(S.of(context).add_personal_info,
                style: FontUtils.getAppFont(
                    fontSize: 18,
                    textColor: AppColor.colorTitleNews,
                    fontWeight: FontWeight.w700)),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Obx(() => Column(
                  children: [
                    InfoInputWidget(
                      title: S.of(context).email,
                      icon: '',
                      content: '',
                      error: _addInfoController.errorEmail.value,
                      onTextChange: (String value) {
                        _addInfoController.email.value = value;
                        _addInfoController.onEmailChange();
                      },
                    ),
                    InkWell(
                      onTap: () async {
                        FocusManager.instance.primaryFocus?.unfocus();
                        var result = await Get.bottomSheet(
                          ChooseContentBottomSheet(
                            datas: const ['Kinh', 'Hoa'],
                            title:
                                'Chọn ${(S.of(context).people).toLowerCase()}',
                          ),
                          isDismissible: true,
                        );
                        _addInfoController.ethnic.value = result;
                        _addInfoController.ethnic.refresh();
                        _addInfoController.checkActiveButton();
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: InfoWidget(
                          infoData: InfoData(
                              title: S.of(context).people,
                              content: _addInfoController.ethnic.value,
                              icon: Ic.icArrowDown,
                              colorBackGround: AppColor.white)),
                    ),
                    InkWell(
                      onTap: () async {
                        FocusManager.instance.primaryFocus?.unfocus();
                        var result = await Get.bottomSheet(
                          ChooseContentBottomSheet(
                            datas: const ['Thánh chúa trời', 'Bà la môn'],
                            title:
                                'Chọn ${(S.of(context).religion).toLowerCase()}',
                          ),
                          isDismissible: true,
                        );
                        _addInfoController.religon.value = result;
                        _addInfoController.religon.refresh();
                        _addInfoController.checkActiveButton();
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: InfoWidget(
                          infoData: InfoData(
                              title: S.of(context).religion,
                              content: _addInfoController.religon.value,
                              icon: Ic.icArrowDown,
                              colorBackGround: AppColor.white)),
                    ),
                    ocrData.isCMND
                        ? InkWell(
                            onTap: () async {
                              FocusManager.instance.primaryFocus?.unfocus();
                              var result = await Get.bottomSheet(
                                ChooseContentBottomSheet(
                                  datas: const ['Nam', 'Nữ'],
                                  title:
                                      'Chọn ${(S.of(context).gender).toLowerCase()}',
                                ),
                                isDismissible: true,
                              );
                              _addInfoController.gender.value = result;
                              _addInfoController.gender.refresh();
                              _addInfoController.checkActiveButton();
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: InfoWidget(
                                infoData: InfoData(
                                    title: S.of(context).gender,
                                    content: _addInfoController.gender.value,
                                    icon: Ic.icArrowDown,
                                    colorBackGround: AppColor.white)),
                          )
                        : Container(),
                    InkWell(
                      onTap: () async {
                        FocusManager.instance.primaryFocus?.unfocus();
                        var result = await Get.bottomSheet(
                          ChooseContentBottomSheet(
                            datas: const ['Độc thân', '2 vợ', '2 chồng'],
                            title:
                                'Chọn ${(S.of(context).marry).toLowerCase()}',
                          ),
                          isDismissible: true,
                        );
                        _addInfoController.marry.value = result;
                        _addInfoController.marry.refresh();
                        _addInfoController.checkActiveButton();
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: InfoWidget(
                          infoData: InfoData(
                              title: S.of(context).marry,
                              content: _addInfoController.marry.value,
                              icon: Ic.icArrowDown,
                              colorBackGround: AppColor.white)),
                    ),
                    ocrData.isCMND
                        ? InfoWidget(
                            infoData: InfoData(
                            title: S.of(context).nationality,
                            content: 'Việt Nam',
                            icon: '',
                          ))
                        : Container()
                  ],
                )),
          )
          // Expanded(
          //     child: SingleChildScrollView(
          //   padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Obx(() => Column(
          //             children: _confirmController.infoDatas
          //                 .map((infoData) => InfoWidget(infoData: infoData))
          //                 .toList(),
          //           ))
          //     ],
          //   ),
          // ))
        ],
      ),
    );
  }
}
