import 'dart:async';

import 'package:core/core.dart';
import 'package:core/generated_images.dart';
import 'package:core/network/internet_handler.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:get/get.dart';
import 'package:account_repository/account_repository.dart';

class WaitingScreenController extends GetxController {
  final FlutterSecureStorage _flutterSecureStorage = Get.find();
  final AccountRepo _accountRepo = Get.find();

  var _7day = 604800000;
  var _10day = 864000000;
  var _91day = 7862400000;

  // var _7day = 300000;  // 5 min
  // var _10day = 500000;
  // var _91day = 600000; //10 min

  void initWaitingScreen() async {
    var prefs = await SharedPreferences.getInstance();
    var isFirstInstallApp = prefs.getBool(AppConst.keyFirstInstallApp) ?? false;
    if (!isFirstInstallApp) {
      await _flutterSecureStorage.write(
          key: AppConst.keyToken, value: AppConst.emptyString);

      await prefs.setBool(AppConst.keyFirstInstallApp, true);
    }

    AppConfig.currentToken =
        await _flutterSecureStorage.read(key: AppConst.keyToken) ?? '';
    AppConfig.isGuest = prefs.getBool(AppConst.keyIsGuest) ?? true;

    // demo delay 2s

    if (AppConfig.currentToken != '') {
      // check 7 days
      if (prefs.getBool(AppConst.keyIsLogin) ?? true) {
        AppConfig.isGuest = false;
        var infoResponse = await _accountRepo.getPersonalInfo();
        if ((infoResponse.userStatus ?? 0) == 0) {
          AppConfig.isEkyc = false;
        } else if ((infoResponse.userStatus ?? 0) == 1) {
          AppConfig.isEkyc = true;
        }
        AppConfig.currentPhone = infoResponse.userName ?? '';
        var lastLogin = prefs.getInt(AppConst.keyTimeLogin) ?? 0;
        if (DateTime.now().millisecond - lastLogin > _91day) {
          var response = await _accountRepo.getRefreshToken(
              refreshToken: prefs.getString(AppConst.keyRefreshToken) ?? '',
              token: AppConfig.currentToken);
          //await _saveNewToken(loginResponse: response);
          _forceLogout(isClearBiometric: true, isClearToten: true);
        } else if (DateTime.now().millisecond - lastLogin > _10day) {
          var response = await _accountRepo.getRefreshToken(
              refreshToken: prefs.getString(AppConst.keyRefreshToken) ?? '',
              token: AppConfig.currentToken);
          await _saveNewToken(loginResponse: response);
          _forceLogout(isClearBiometric: false, isClearToten: false);
        } else if (DateTime.now().millisecondsSinceEpoch - lastLogin > _7day) {
          var response = await _accountRepo.getRefreshToken(
              refreshToken: prefs.getString(AppConst.keyRefreshToken) ?? '',
              token: AppConfig.currentToken);
          await _saveNewToken(loginResponse: response);
          _forceLogout(isClearBiometric: false, isClearToten: false);
        } else {
          // var isActiveBiometric = prefs.getBool(
          //         AppConfig.currentPhone + AppConst.keyIsActiveBiometric) ??
          //     false;
          // if (isActiveBiometric) {
          //   unawaited(Get.offAllNamed(DeeplinkConstant.loginScreen));
          // } else {
          //   unawaited(Get.offAllNamed(DeeplinkConstant.homeTab, arguments: 0));
          // }
          if (prefs.getBool(AppConst.keyIsLogin) ?? false) {
            unawaited(Get.offAllNamed(DeeplinkConstant.homeTab, arguments: 0));
          } else {
            unawaited(Get.offAllNamed(DeeplinkConstant.loginScreen));
          }
        }
      } else {
        unawaited(Get.offAllNamed(DeeplinkConstant.loginScreen));
      }
    } else {
      unawaited(Get.offAllNamed(DeeplinkConstant.loginScreen));
    }
  }

  Future<void> _saveNewToken(
      {required RefreshTokenResponse loginResponse}) async {
    var prefs = await SharedPreferences.getInstance();
    var token = loginResponse.data?.token ?? '';
    var refreshToken = loginResponse.data?.refreshToken ?? '';
    await prefs.setString(AppConst.keyRefreshToken, refreshToken);
    await prefs.setBool(AppConst.keyIsLogin, false);
    await _flutterSecureStorage.write(key: AppConst.keyToken, value: token);
    AppConfig.currentToken = token;
    AppConfig.userId = loginResponse.data?.userId ?? '';
    var infoResponse = await _accountRepo.getPersonalInfo();
    if ((infoResponse.userStatus ?? 0) == 0) {
      AppConfig.isEkyc = false;
    } else if ((infoResponse.userStatus ?? 0) == 1) {
      AppConfig.isEkyc = true;
    }
  }

  void _forceLogout(
      {required bool isClearToten, required bool isClearBiometric}) {
    showBtSheetHelper(
        content: 'Vui lòng đăng nhập lại',
        contentButton: 'Tôi đã hiểu',
        image: Img.imgForceLogout,
        isDismissible: false,
        press: () {
          forceLogout(
              isClearToken: isClearToten, isClearBiometric: isClearBiometric);
        },
        title: 'Phiên đăng nhập đã hết hạn');
  }
}
