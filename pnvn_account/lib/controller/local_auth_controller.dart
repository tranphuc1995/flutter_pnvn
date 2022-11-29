import 'dart:io';

import 'package:core/const/app_config.dart';
import 'package:core/const/app_const.dart';
import 'package:core/widgets/bottom_sheet_helper.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:pnvn_account/generated_images.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/input_pass_bottom_sheet.dart';

class LocalAuthController extends GetxController {
  var isActiveSwitch = false.obs;
  void initSwitch() async {
    final prefs = await SharedPreferences.getInstance();
    var result = prefs.getBool(AppConst.keyIsActiveBiometric) ?? false;
    isActiveSwitch.value = result;
    isActiveSwitch.refresh();
  }

  Future<void> changeSwitch() async {
    if (isActiveSwitch.value) {
      isActiveSwitch.value = false;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(AppConst.keyIsActiveBiometric, false);
    } else {
      isActiveSwitch.value = true;
    }
    isActiveSwitch.refresh();
  }

  void showBottomSheetConfirm() {
    if (isActiveSwitch.value) {
      changeSwitch();
    } else {
      showBtSheetHelper(
          content: Platform.isAndroid
              ? 'Bạn muốn dùng vân tay để đăng nhập ứng dụng Hội Liên Hiệp Phụ nữ?'
              : 'Bạn muốn dùng Face ID để đăng nhập ứng dụng Hội Liên Hiệp Phụ nữ?',
          contentButton: 'Xác nhận',
          image: Img.imgConfirmLocalAuth,
          isDismissible: true,
          press: () {
            Get.back();
            _checkAvailableLocalDevice();
          },
          title: Platform.isAndroid
              ? 'Bật đăng nhập vân tay'
              : 'Bật đăng nhập bằng FaceID');
    }
  }

  Future<void> _checkAvailableLocalDevice() async {
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
      _showBottomSheetInputPass();
    }
  }

  void _showBottomSheetInputPass() {
    Get.bottomSheet(InputPassBottomSheet(biometricSucess: (value) {
      changeSwitch();
    }), isScrollControlled: true);
  }
}
