import 'dart:async';
import 'dart:io';

import 'package:authentication_repository/repo/authentication_repo.dart';
import 'package:core/const/app_config.dart';
import 'package:core/const/app_const.dart';
import 'package:core/router/deeplink_constant.dart';
import 'package:core/widgets/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:pnvn_authentication/generated_images.dart';
import 'package:pnvn_authentication/l10n/generated/l10n.dart';
import 'package:pnvn_authentication/pnvn_authentication.dart';
import 'package:pnvn_authentication/screen/otp_code_screen.dart';
import 'package:pnvn_authentication/screen/password_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/local_auth_ios.dart';

class LoginController extends GetxController {
  final AuthenticationRepo _authenticationRepo = Get.find();

  var isActiveButton = false.obs;
  var errorPhone = ''.obs;
  var isShowPrivacy = true.obs;
  var isLoadingButton = false.obs;
  var currentPhone = '';

  var isUserLocked = false.obs;

  void checkValidPhone({required String phone, required BuildContext context}) {
    var patternPhone = r'^(?:[+0](3|5|7|8|9))+[0-9]{8}$';

    var isValidatePhone = RegExp(patternPhone).hasMatch(phone);
    if (isValidatePhone) {
      errorPhone.value = '';
      isActiveButton.value = true;
    } else {
      errorPhone.value = S.of(context).error_phone;
      isActiveButton.value = false;
    }

    // if (phone.length == 10) {
    //   if (phone[0] == '0') {
    //     errorPhone.value = '';
    //     isActiveButton.value = true;
    //   } else {
    //     errorPhone.value = S.of(context).error_phone;
    //     isActiveButton.value = false;
    //   }
    // } else if (phone.trim().isEmpty) {
    //   errorPhone.value = '';
    //   isActiveButton.value = false;
    // } else {
    //   errorPhone.value = S.of(context).error_phone;
    //   isActiveButton.value = false;
    // }
    errorPhone.refresh();
    isActiveButton.refresh();
  }

  void checkShowPrivacy({required bool isShowKeyboard}) {
    if (isShowKeyboard) {
      isShowPrivacy.value = false;
    } else {
      isShowPrivacy.value = true;
    }
    isShowPrivacy.refresh();
  }

  Future<void> initLoginScreen() async {
    var prefs = await SharedPreferences.getInstance();
    var isActiveBiometric =
        prefs.getBool(AppConst.keyIsActiveBiometric) ?? false;
    if (isActiveBiometric) {
      var available = await LocalAuthentication().getAvailableBiometrics();
      var isActiveStrongBiometric = false;
      for (var i = 0; i < available.length; i++) {
        if (available[i] == BiometricType.strong ||
            available[i] == BiometricType.face ||
            available[i] == BiometricType.fingerprint) {
          isActiveStrongBiometric = true;
          break;
        }
      }
      if (!isActiveStrongBiometric) {
        showBtSheetHelper(
            content: Platform.isAndroid
                ? 'Vui lòng thiết lập vân tay trên thiết bị của bạn trước'
                : 'Vui lòng thiết lập FaceID trên thiết bị của bạn trước',
            contentButton: 'Tôi đã hiểu',
            image: Img.imgConfirmLocalAuth,
            isDismissible: true,
            press: () {
              Get.back();
            },
            title: Platform.isAndroid
                ? 'Chưa thiết lập vân tay'
                : 'Chưa thiết lập FaceID');
      } else {
        var result = await LocalAuthentication().authenticate(
            localizedReason: 'Sử dụng vân tay để xác thực danh tính của bạn',
            authMessages: const <AuthMessages>[
              AndroidAuthMessages(
                  signInTitle: 'Xác thực danh tính của bạn',
                  cancelButton: 'Huỷ',
                  biometricNotRecognized: 'cccccc',
                  biometricHint: '',
                  biometricRequiredTitle: 'eeeeee',
                  biometricSuccess: 'ffffffff',
                  deviceCredentialsRequiredTitle: 'hhhhhh',
                  deviceCredentialsSetupDescription: 'jjjjjjjj'),
              IOSAuthMessages(
                cancelButton: 'No thanks',
              ),
            ],
            options: const AuthenticationOptions(
                useErrorDialogs: false, biometricOnly: true));

        if (result) {
          unawaited(Get.offAllNamed(DeeplinkConstant.homeTab, arguments: 0));
        }
      }
    }
  }

  void checkUserExists() async {
    isLoadingButton.value = true;
    isLoadingButton.refresh();
    var response =
        await _authenticationRepo.checkUserExists(phone: currentPhone);
    isLoadingButton.value = false;
    isLoadingButton.refresh();

    if (response.userIsLockedOut == true) {
      isUserLocked.value = true;
      errorPhone.value =
          'Vì nhập sai 5 lần, tài khoản của bạn sẽ bị khoá trong 30 phút. Sau khi mở khoá, nếu bạn không thể nhớ mật khẩu, vui lòng chọn Quên mật khẩu và đặt mật khẩu mới.';
    } else if (response.userIsLocked == true) {
      isUserLocked.value = true;
      errorPhone.value =
          'Tài khoản đã ngưng kích hoạt, vui lòng nhập lại hoặc liên hệ Quản trị viên để được hỗ trợ. ';
    } else if ((response.otpRequestInDay ?? 0) >= 5) {
      isUserLocked.value = true;
      errorPhone.value =
          'Lưu ý, bạn có tối đa 5 lượt gửi mã xác thực, bạn vui lòng chờ 24h tiếng để hệ thống làm mới và gửi lại mã cho bạn.';
    } else {
      if (response.userExists ?? false) {
        await Get.to(() => PasswordScreen(), arguments: currentPhone);
      } else {
        await Get.to(() => OtpCodeScreen(), arguments: {
          'PHONE_NUMBER': currentPhone,
          'FORGOT_PASSWORD': false,
          'CHANGE_PASSWORD': false
        });
      }
    }
  }

  Future<void> loginBiometric() async {
    var prefs = await SharedPreferences.getInstance();
    var isActiveBiometric =
        prefs.getBool(AppConst.keyIsActiveBiometric) ?? false;
    if (isActiveBiometric) {
      var available = await LocalAuthentication().getAvailableBiometrics();
      var isActiveStrongBiometric = false;
      for (var i = 0; i < available.length; i++) {
        if (available[i] == BiometricType.strong ||
            available[i] == BiometricType.face ||
            available[i] == BiometricType.fingerprint) {
          isActiveStrongBiometric = true;
          break;
        }
      }
      if (!isActiveStrongBiometric) {
        showBtSheetHelper(
            content: Platform.isAndroid
                ? 'Vui lòng thiết lập vân tay trên thiết bị của bạn trước'
                : 'Vui lòng thiết lập FaceID trên thiết bị của bạn trước',
            contentButton: 'Tôi đã hiểu',
            image: Img.imgConfirmLocalAuth,
            isDismissible: true,
            press: () {
              Get.back();
            },
            title: Platform.isAndroid
                ? 'Chưa thiết lập vân tay'
                : 'Chưa thiết lập FaceID');
      } else {
        var result = await LocalAuthentication().authenticate(
            localizedReason: 'Sử dụng vân tay để xác thực danh tính của bạn',
            authMessages: const <AuthMessages>[
              AndroidAuthMessages(
                  signInTitle: 'Xác thực danh tính của bạn',
                  cancelButton: 'Huỷ',
                  biometricNotRecognized: 'cccccc',
                  biometricHint: '',
                  biometricRequiredTitle: 'eeeeee',
                  biometricSuccess: 'ffffffff',
                  deviceCredentialsRequiredTitle: 'hhhhhh',
                  deviceCredentialsSetupDescription: 'jjjjjjjj'),
              IOSAuthMessages(
                cancelButton: 'No thanks',
              ),
            ],
            options: const AuthenticationOptions(
                useErrorDialogs: false, biometricOnly: true));
        if (result) {
          AppConfig.isGuest = false;
          await prefs.setBool(AppConst.keyIsLogin, true);
          unawaited(Get.offAllNamed(DeeplinkConstant.homeTab, arguments: 0));
        }
      }
    } else {
      showBtSheetHelper(
          image: Img.imgConfirmLocalAuth,
          title: Platform.isAndroid
              ? 'Đăng nhập bằng vân tay'
              : 'Đăng nhập bằng FaceID',
          content: Platform.isAndroid
              ? 'Bạn vui lòng đăng nhập ứng dụng để kích hoạt Đăng nhập bằng vân tay'
              : 'Bạn vui lòng đăng nhập ứng dụng để kích hoạt Đăng nhập bằng FaceID',
          contentButton: 'Tôi đã hiểu',
          press: () {
            Get.back();
          },
          isDismissible: true);
    }
  }
}
