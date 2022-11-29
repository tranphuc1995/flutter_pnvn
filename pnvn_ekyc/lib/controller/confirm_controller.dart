import 'dart:async';

import 'package:core/const/app_config.dart';
import 'package:core/network/internet_handler.dart';
import 'package:core/router/deeplink_constant.dart';
import 'package:core/widgets/bottom_sheet_helper.dart';
import 'package:ekyc_repository/ekyc_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pnvn_ekyc/generated_images.dart';
import 'package:pnvn_ekyc/l10n/generated/l10n.dart';
import 'package:pnvn_ekyc/model/info_data.dart';
import 'package:pnvn_ekyc/model/ocr_data.dart';

class ConfirmController extends GetxController {
  var infoDatas = <InfoData>[].obs;
  var isLoadingButton = false.obs;
  final EkycRepo _ekycRepo = Get.find();
  var ocrData = OcrData();
  void showData({required BuildContext context, required bool isCMND}) {
    if (isCMND) {
      infoDatas.add(InfoData(
          title: S.of(context).cmndNumber,
          content: ocrData.idNumber,
          icon: ''));
      infoDatas.add(InfoData(
          title: S.of(context).fullName, content: ocrData.fullName, icon: ''));
      infoDatas.add(InfoData(
          title: S.of(context).dob, content: ocrData.dob, icon: Ic.icCalendar));
      infoDatas.add(InfoData(
          title: S.of(context).province, content: ocrData.homeTown, icon: ''));
      infoDatas.add(InfoData(
          title: S.of(context).address,
          content: ocrData.permanentAddress,
          icon: ''));
      // infoDatas.add(InfoData(
      //     title: S.of(context).people, content: '', icon: Ic.icArrowDown));
      // infoDatas
      //     .add(InfoData(title: S.of(context).religion, content: '', icon: ''));
      infoDatas.add(InfoData(
          title: S.of(context).dateOfIssue,
          content: ocrData.doi,
          icon: Ic.icCalendar));
      infoDatas.add(InfoData(
          title: S.of(context).issueOf,
          content: ocrData.placeOfIssue,
          icon: ''));
    } else {
      infoDatas.add(InfoData(
          title: S.of(context).cccdNumber,
          content: ocrData.idNumber,
          icon: ''));
      infoDatas.add(InfoData(
          title: S.of(context).fullName, content: ocrData.fullName, icon: ''));
      infoDatas.add(InfoData(
          title: S.of(context).dob, content: ocrData.dob, icon: Ic.icCalendar));
      infoDatas.add(InfoData(
          title: S.of(context).gender,
          content: ocrData.gender,
          icon: Ic.icArrowDown));
      infoDatas.add(InfoData(
          title: S.of(context).nationality,
          content: ocrData.nationality,
          icon: ''));
      infoDatas.add(InfoData(
          title: S.of(context).province,
          content: ocrData.homeTown,
          icon: Ic.icArrowDown));
      infoDatas.add(InfoData(
          title: S.of(context).address,
          content: ocrData.permanentAddress,
          icon: ''));
      infoDatas.add(InfoData(
          title: S.of(context).dateOfIssue,
          content: ocrData.doi,
          icon: Ic.icCalendar));
      infoDatas.add(InfoData(
          title: S.of(context).issueOf,
          content: ocrData.placeOfIssue,
          icon: ''));
    }
    infoDatas.refresh();
  }

  Future<void> uploadDataToServer({required OcrData ocrData}) async {
    isLoadingButton.value = true;
    isLoadingButton.refresh();
    if (await checkInterAvailable()) {
      var responseFrontDocument =
          await _ekycRepo.uploadImge(path: ocrData.pathFrontDocument);
      if ((responseFrontDocument.data?.fileUrlOrigin ?? '') != '') {
        var responseBackDocument =
            await _ekycRepo.uploadImge(path: ocrData.pathBackDocument);
        var responseFace = await _ekycRepo.uploadImge(path: ocrData.pathFace);
        var urlOriginFront = responseFrontDocument.data?.fileUrlOrigin ?? '';
        var urlOriginBack = responseBackDocument.data?.fileUrlOrigin ?? '';
        var urlOriginFace = responseFace.data?.fileUrlOrigin ?? '';

        var uploadEkycResponse = await _ekycRepo.uploadDataEkyc(
          type: ocrData.isCMND ? 0 : 1,
          avatar: urlOriginFace,
          idNumber: ocrData.idNumber,
          fullName: ocrData.fullName,
          dayOfBirth: ocrData.dob,
          domicile: ocrData.homeTown,
          permanentAddress: ocrData.permanentAddress,
          idIssuedDate: ocrData.doi,
          idissuedPlace: ocrData.placeOfIssue,
          frontImage: urlOriginFront,
          backImage: urlOriginBack,
          gender: ocrData.isCMND ? '' : ocrData.gender,
          nationality: 'Việt Nam',
        );
        if ((uploadEkycResponse.metaData?.status ?? '') == 'ok') {
          // var infoResponse = await _accountRepo.getPersonalInfo();
          // if ((infoResponse.userStatus ?? 0) == 0) {
          //   AppConfig.isEkyc = false;
          // } else if ((infoResponse.userStatus ?? 0) == 1) {
          //   AppConfig.isEkyc = true;
          // }
          AppConfig.isEkyc = true;

          unawaited(Get.offAllNamed(DeeplinkConstant.homeTab, arguments: 0));
        } else {
          isLoadingButton.value = false;
          isLoadingButton.refresh();
          showBtSheetHelper(
              image: Img.imgCmnd,
              title: 'CMND/ CCCD đã được sử dụng',
              content: uploadEkycResponse.metaData?.message ?? '',
              contentButton: 'Xác thực lại',
              press: () {
                Get.back();
                Get.back();
              },
              isDismissible: true);
        }
      }
    } else {
      isLoadingButton.value = false;
      isLoadingButton.refresh();
      showBottomSheetHelper(botttomSheetType: BotttomSheetType.noNetwork);
    }
  }
}
