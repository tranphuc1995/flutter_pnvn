import 'dart:async';

import 'package:authentication_repository/entities/register/register_response.dart';
import 'package:authentication_repository/repo/authentication_repo.dart';
import 'package:core/core.dart';
import 'package:core/firebase/firebase_analytics_handler.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:account_repository/account_repository.dart';
import 'package:pnvn_forum/controller/detail_article_controller.dart';
import 'package:pnvn_social_feed/controller/social_feed_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screen/otp_code_screen.dart';

class PasswordController extends GetxController {
  final AuthenticationRepo _authenticationRepo = Get.find();
  final FlutterSecureStorage _flutterSecureStorage = Get.find();
  final AccountRepo _accountRepo = Get.find();

  var isActiveButton = false.obs;
  var isLoadingButton = false.obs;
  var isShowValidateView = false.obs;
  var isLockAccount = false.obs;

  var isValidateCharacters = false.obs;
  var isValidateDigit = false.obs;
  var isValidateLowerCase = false.obs;
  var isValidateUpCase = false.obs;
  var isValidateSpecial = false.obs;
  var isValidatePassword = true.obs;

  //validate nickname
  var isValidFirstConditionNickname = false.obs;
  var isValidSecondConditionNickname = false.obs;
  var isValidThirdConditionNickname = false.obs;
  var errorNickname = ''.obs;
  var isShowErrorNickname = false.obs;

  var currentPassword = '';
  var rePassword = '';
  var newPassword = '';
  var errorMessage = ''.obs;
  var errorChangePass = ''.obs;
  var inputPass = '';
  var inputRepass = '';
  var currentNickname = '';
  void checkValidNickname({required String nickName}) {
    errorNickname.value = '';
    var patternSpecial = r'(?=.*[~!@#$%^&*\-+=`|\\\(\)\{\}\[\]:;\"<>,.?/])';
    if (nickName == '') {
      isValidFirstConditionNickname.value = false;
      isValidSecondConditionNickname.value = false;
      isValidThirdConditionNickname.value = false;
      isShowErrorNickname.value = true;
    } else {
      if (nickName.length >= 5 && nickName.length <= 50) {
        isValidFirstConditionNickname.value = true;
      } else {
        isValidFirstConditionNickname.value = false;
      }
      if (nickName.trim().contains(' ')) {
        isValidSecondConditionNickname.value = false;
      } else {
        isValidSecondConditionNickname.value = true;
      }
      if (RegExp(patternSpecial).hasMatch(nickName.trim())) {
        isValidThirdConditionNickname.value = false;
      } else {
        if (nickName.trim().contains('\'') ||
            nickName.trim().contains('‘') ||
            nickName.trim().contains('“')) {
          isValidThirdConditionNickname.value = false;
        } else {
          isValidThirdConditionNickname.value = true;
        }
      }
      if (isValidFirstConditionNickname.value &&
          isValidSecondConditionNickname.value &&
          isValidThirdConditionNickname.value) {
        isShowErrorNickname.value = false;
      } else {
        isShowErrorNickname.value = true;
      }
      if (isValidatePassword.value &&
          !isShowErrorNickname.value &&
          inputPass == inputRepass &&
          inputPass.isNotEmpty &&
          inputRepass.isNotEmpty) {
        isActiveButton.value = true;
      } else {
        isActiveButton.value = false;
      }
    }
  }

  void resetValidate() {
    isValidateCharacters.value = false;
    isValidateCharacters.refresh();

    isValidateDigit.value = false;
    isValidateDigit.refresh();

    isValidateLowerCase.value = false;
    isValidateLowerCase.refresh();

    isValidateUpCase.value = false;
    isValidateUpCase.refresh();

    isValidateSpecial.value = false;
    isValidateSpecial.refresh();

    isValidatePassword.value = true;
    isValidatePassword.refresh();

    errorMessage.value = '';
    errorMessage.refresh();

    isActiveButton.value = false;
    isActiveButton.refresh();

    isLoadingButton.value = false;
    isLoadingButton.refresh();

    isShowValidateView.value = false;
    isShowValidateView.refresh();

    currentPassword = '';

    rePassword = '';
    newPassword = '';
  }

  void checkValidPassword({required String value}) {
    //var patternCharacters = r'[a-zA-Z0-9]{8,}';
    var patternDigit = r'(?=.*\d)';
    var patternLowerCase = r'(?=.*[a-z])';
    var patternUpCase = r'(?=.*[A-Z])';
    //var patternSpecial = r'(?=.*[#$^+=!*()@%&.,~])';

    //~!@#$%^&*_-+=`|\(){}:;"'<>,.?/
    var patternSpecial = r'(?=.*[~!@#$%^&*\_\-+=`|\\\(\)\{\}\[\]:;\"<>,.?/])';

    //isValidateCharacters.value = RegExp(patternCharacters).hasMatch(value);
    isValidateCharacters.value = value.length >= 8;
    isValidateDigit.value = RegExp(patternDigit).hasMatch(value);
    isValidateLowerCase.value = RegExp(patternLowerCase).hasMatch(value);
    isValidateUpCase.value = RegExp(patternUpCase).hasMatch(value);
    isValidateSpecial.value = RegExp(patternSpecial).hasMatch(value) ||
        value.contains('\'') ||
        value.contains('‘') ||
        value.contains('“');
    if (value == "'") {
      isValidateSpecial.value = true;
    }
    errorChangePass.value = '';
    isValidatePassword.value = isValidateCharacters.value &&
        isValidateDigit.value &&
        isValidateLowerCase.value &&
        isValidateUpCase.value &&
        isValidateSpecial.value;

    if (rePassword.isNotEmpty && value != rePassword) {
      errorMessage.value =
          'Mật khẩu nhập lại không trùng khớp. Vui lòng kiểm tra lại.';
    } else {
      errorMessage.value = '';
    }

    if (isValidatePassword.value &&
        rePassword.isNotEmpty &&
        value == rePassword &&
        !isShowErrorNickname.value) {
      isActiveButton.value = true;
      isActiveButton.refresh();
      return;
    }

    isActiveButton.value = false;
    isActiveButton.refresh();
  }

  void checkValidInputPassword({required String password}) {
    if (password != '') {
      isActiveButton.value = true;
    } else {
      isActiveButton.value = false;
    }
    isActiveButton.refresh();
  }

  void login({required String phone}) async {
    isLoadingButton.value = true;
    isLoadingButton.refresh();
    var response = await _authenticationRepo.login(
        phone: phone, password: currentPassword);
    if ((response.metaData?.message ?? '') == '') {
      AppConfig.isGuest = false;
      final prefs = await SharedPreferences.getInstance();
      var token = response.data?.token ?? '';
      var refreshToken = response.data?.refreshToken ?? '';
      await prefs.setString(AppConst.keyRefreshToken, refreshToken);
      await _flutterSecureStorage.write(key: AppConst.keyToken, value: token);
      AppConfig.currentToken = token;
      AppConfig.userId = response.data?.userId ?? '';
      var infoResponse = await _accountRepo.getPersonalInfo();
      if ((infoResponse.userStatus ?? 0) == 0) {
        AppConfig.isEkyc = false;
      } else if ((infoResponse.userStatus ?? 0) == 1) {
        AppConfig.isEkyc = true;
      }

      // log event
      FirebaseAnalyticsHandler().logEventLogin();

      await prefs.setInt(
          AppConst.keyTimeLogin, DateTime.now().millisecondsSinceEpoch);

      await prefs.setBool(AppConst.keyIsLogin, true);
      await prefs.setBool(AppConst.keyIsGuest, false);

      var indexTab = 0;
      if (SocialFeedController.currentVideoData.idLikeUnlike != '') {
        indexTab = 1;
      } else if (DetailArticleController.currentPostID != '') {
        indexTab = 2;
      }
      unawaited(Get.offAllNamed(DeeplinkConstant.homeTab, arguments: indexTab));
    } else {
      isLoadingButton.value = false;
      errorMessage.refresh();
      isLoadingButton.refresh();
      // lock accout

      isLockAccount.value = response.metaData?.errorCode == 'ER013' ||
          response.metaData?.errorCode == 'ER015';
      if (response.metaData?.errors?.isNotEmpty == true) {
        errorMessage.value = response.metaData?.errors?.first?.message ?? '';
      } else {
        errorMessage.value = response.metaData?.message ?? '';
      }
    }
  }

  void registerUser({required String phone, required String otp}) async {
    isLoadingButton.value = true;
    isLoadingButton.refresh();
    var response = await _authenticationRepo.registerUser(
        otp: otp,
        userName: phone.trim(),
        password: currentPassword.trim(),
        nickname: currentNickname.trim());
    isLoadingButton.value = false;
    isLoadingButton.refresh();
    if (response.metaData?.status == 'ok') {
      // LogEvent
      AppConfig.userId = response.data?.userId ?? '';
      FirebaseAnalyticsHandler().logEventRegister();

      login(phone: phone);
    } else {
      var errorCode = response.metaData?.errorCode ?? '0';
      if (errorCode == 'ER033') {
        errorNickname.value = getErrorMessage(response.metaData);
      } else {
        errorMessage.value = getErrorMessage(response.metaData);
      }
    }
  }

  void resetPassword({required String phone, required String otp}) async {
    isLoadingButton.value = true;
    isLoadingButton.refresh();
    var response = await _authenticationRepo.resetPassword(
        otp: otp, userName: phone, password: currentPassword);
    isLoadingButton.value = false;
    isLoadingButton.refresh();
    if (response.metaData?.status == 'ok') {
      login(phone: phone);
    } else {
      errorMessage.value = getErrorMessage(response.metaData);
    }
  }

  void sendOtpChangePassword({required String currentPhone}) async {
    isLoadingButton.value = true;
    isLoadingButton.refresh();
    var response = await _authenticationRepo.sendOtpChangePassword(
        phoneNumber: currentPhone,
        currentPassword: currentPassword,
        newPassword: newPassword);

    isLoadingButton.value = false;
    isLoadingButton.refresh();
    if (response.metaData?.status == 'ok') {
      errorMessage.value = '';
      Get.back();
      await Get.to(() => OtpCodeScreen(), arguments: {
        'PHONE_NUMBER': currentPhone,
        'CHANGE_PASSWORD': true,
        'FORGOT_PASSWORD': false,
        'CURRENT_PASSWORD': currentPassword,
        'NEW_PASSWORD': newPassword
      });
    } else {
      if (response.metaData?.errorCode == 'ER017') {
        errorMessage.value = getErrorMessage(response.metaData);
        errorChangePass.value = '';
      } else {
        errorChangePass.value = getErrorMessage(response.metaData);
        errorMessage.value = '';
      }
    }
  }

  // get error message
  String getErrorMessage(MetaDataRegister? metaData) {
    if (metaData?.errors?.isNotEmpty == true) {
      return metaData?.errors?.first?.message ?? '';
    }
    return metaData?.message ?? '';
  }
}
