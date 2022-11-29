import 'dart:async';

import 'package:authentication_repository/entities/register/register_response.dart';
import 'package:authentication_repository/repo/authentication_repo.dart';
import 'package:core/router/deeplink_constant.dart';
import 'package:get/get.dart';

class OtpCodeController extends GetxController {
  final AuthenticationRepo _authenticationRepo = Get.find();

  var otp = '';
  var errorOtp = ''.obs;
  var isForgotPassword = false;
  var isLoading = false.obs;
  var isLockSendOtp = false.obs;

  void sendOtpRegister({required String currentPhone}) async {
    isLoading.value = true;
    isLoading.refresh();

    var response =
        await _authenticationRepo.sendOtpRegister(phoneNumber: currentPhone);

    isLoading.value = false;
    isLoading.refresh();

    if (response.metaData?.status == 'ok') {
      errorOtp.value = '';
    } else {
      errorOtp.value = getErrorMessage(response.metaData);
    }
  }

  void resendOtpRegister({required String currentPhone}) async {
    isLoading.value = true;
    isLoading.refresh();
    var response =
        await _authenticationRepo.reSendOtpRegister(phoneNumber: currentPhone);

    isLoading.value = false;
    isLoading.refresh();
    if (response.metaData?.status == 'ok') {
      errorOtp.value = '';
    } else {
      if (response.metaData?.errorCode == 'ER023') {
        isLockSendOtp.value = true;
      }
      errorOtp.value = getErrorMessage(response.metaData);
    }
  }

  void verifyOtpRegister(
      {required String currentPhone, required String otp}) async {
    isLoading.value = true;
    isLoading.refresh();
    var response = await _authenticationRepo.verifyOtpRegister(
        phoneNumber: currentPhone, otp: otp);
    isLoading.value = false;
    isLoading.refresh();

    if (response.metaData?.status == 'ok') {
      errorOtp.value = '';
      await Get.toNamed(DeeplinkConstant.createPasswordScreen, arguments: {
        'PHONE_NUMBER': currentPhone,
        'FORGOT_PASSWORD': isForgotPassword,
        'OTP': otp
      });
    } else {
      errorOtp.value = getErrorMessage(response.metaData);
    }
  }

  // forgot password
  void forgotPassword({required String currentPhone}) async {
    isLoading.value = true;
    isLoading.refresh();
    var response =
        await _authenticationRepo.fogotPassword(phoneNumber: currentPhone);

    isLoading.value = false;
    isLoading.refresh();
    if (response.metaData?.status == 'ok') {
      errorOtp.value = '';
    } else {
      errorOtp.value = getErrorMessage(response.metaData);
    }
  }

  void resendOtpForgotPassword({required String currentPhone}) async {
    isLoading.value = true;
    isLoading.refresh();
    var response = await _authenticationRepo.resendOtpFogotPassword(
        phoneNumber: currentPhone);

    isLoading.value = false;
    isLoading.refresh();
    if (response.metaData?.status == 'ok') {
      errorOtp.value = '';
    } else {
      errorOtp.value = getErrorMessage(response.metaData);
    }
  }

  void verifyOtpForgotPassword(
      {required String currentPhone, required String otp}) async {
    isLoading.value = true;
    isLoading.refresh();
    var response = await _authenticationRepo.verifyOtpFogotPassword(
        phoneNumber: currentPhone, otp: otp);

    isLoading.value = false;
    isLoading.refresh();
    if (response.metaData?.status == 'ok') {
      errorOtp.value = '';

      await Get.toNamed(DeeplinkConstant.createPasswordScreen, arguments: {
        'PHONE_NUMBER': currentPhone,
        'FORGOT_PASSWORD': isForgotPassword,
        'OTP': otp
      });
    } else {
      errorOtp.value = getErrorMessage(response.metaData);
    }
  }

  void resendOtpChangePassword(
      {required String currentPhone,
      required String currentPassword,
      required String newPassword}) async {
    isLoading.value = true;
    isLoading.refresh();
    var response = await _authenticationRepo.reSendOtpChangePassword(
        phoneNumber: currentPhone,
        currentPassword: currentPassword,
        newPassword: newPassword);

    isLoading.value = false;
    isLoading.refresh();
    if (response.metaData?.status == 'ok') {
      errorOtp.value = '';
    } else {
      errorOtp.value = getErrorMessage(response.metaData);
    }
  }

  void changePassword(
      {required String otp,
      required String currentPassword,
      required String newPassword}) async {
    isLoading.value = true;
    isLoading.refresh();
    var response = await _authenticationRepo.changePassword(
        otp: otp, currentPassword: currentPassword, newPassword: newPassword);

    isLoading.value = false;
    isLoading.refresh();
    if (response.metaData?.status == 'ok') {
      errorOtp.value = '';
      unawaited(Get.offAllNamed(DeeplinkConstant.loginScreen));
    } else {
      errorOtp.value = getErrorMessage(response.metaData);
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
