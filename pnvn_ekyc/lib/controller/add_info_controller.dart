import 'dart:async';
import 'dart:developer';

import 'package:core/core.dart';
import 'package:ekyc_repository/ekyc_repository.dart';
import 'package:get/get.dart';
import 'package:pnvn_ekyc/model/ocr_data.dart';
import 'package:account_repository/account_repository.dart';

class AddInfoController extends GetxController {
  final AccountRepo _accountRepo = Get.find();
  final EkycRepo _ekycRepo = Get.find();
  var email = ''.obs;
  var ethnic = ''.obs;
  var religon = ''.obs;
  var gender = ''.obs;
  var marry = ''.obs;
  var isActiveButton = false.obs;
  var isLoadingButton = false.obs;
  var errorEmail = ''.obs;
  var isCMND = true;

  void checkActiveButton() {
    if (isCMND) {
      if (_checkValidEmail() &&
          ethnic.value != '' &&
          religon.value != '' &&
          gender.value != '' &&
          marry.value != '') {
        isActiveButton.value = true;
      } else {
        isActiveButton.value = false;
      }
    } else {
      if (_checkValidEmail() &&
          ethnic.value != '' &&
          religon.value != '' &&
          marry.value != '') {
        isActiveButton.value = true;
      } else {
        isActiveButton.value = false;
      }
    }
    isActiveButton.refresh();
  }

  void onEmailChange() {
    if (_checkValidEmail()) {
      errorEmail.value = '';
    } else {
      errorEmail.value = 'Email chưa đúng định dạng';
    }

    errorEmail.refresh();
    checkActiveButton();
  }

  bool _checkValidEmail() {
    var emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email.value);
    return emailValid;
  }

  Future<void> uploadDataToServer({required OcrData ocrData}) async {
    isLoadingButton.value = true;
    isLoadingButton.refresh();
    var responseFrontDocument =
        await _ekycRepo.uploadImge(path: ocrData.pathFrontDocument);
    var responseBackDocument =
        await _ekycRepo.uploadImge(path: ocrData.pathBackDocument);
    var responseFace = await _ekycRepo.uploadImge(path: ocrData.pathFace);
    var urlOriginFront = responseFrontDocument.data?.fileUrlOrigin ?? '';
    var urlOriginBack = responseBackDocument.data?.fileUrlOrigin ?? '';
    var urlOriginFace = responseFace.data?.fileUrlOrigin ?? '';

    var uploadEkycResponse = await _ekycRepo.uploadDataEkyc(
      type: isCMND ? 0 : 1,
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
      gender: isCMND ? gender.value : ocrData.gender,
      nationality: 'Việt Nam',
    );
    if ((uploadEkycResponse.metaData?.status ?? '') == 'ok') {
      var infoResponse = await _accountRepo.getPersonalInfo();
      if ((infoResponse.userStatus ?? 0) == 0) {
        AppConfig.isEkyc = false;
      } else if ((infoResponse.userStatus ?? 0) == 1) {
        AppConfig.isEkyc = true;
      }

      unawaited(Get.offAllNamed(DeeplinkConstant.homeTab, arguments: 0));
    } else {
      isLoadingButton.value = false;
      isLoadingButton.refresh();
    }
  }
}
