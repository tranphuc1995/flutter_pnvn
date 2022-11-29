import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:core/const/app_config.dart';
import 'package:core/firebase/firebase_analytics_handler.dart';
import 'package:flutter/services.dart';
import 'package:core/const/app_const.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../router/deeplink_constant.dart';

Future<bool> checkInterAvailable() async {
  var _connectivity = Connectivity();
  var hasInternet = false;
  try {
    var result = await _connectivity.checkConnectivity();
    if (result.name == AppConst.noneNetwork) {
      hasInternet = false;
    } else {
      hasInternet = true;
    }
  } on PlatformException catch (e) {}
  return hasInternet;
}

void forceLogout(
    {required bool isClearToken, required bool isClearBiometric}) async {
  if (isClearToken) {
    final FlutterSecureStorage _flutterSecureStorage = Get.find();
    await _flutterSecureStorage.write(key: AppConst.keyToken, value: '');
    AppConfig.currentToken = '';
  }
  // LogEvent
  FirebaseAnalyticsHandler().logEventLogout();

  if (isClearBiometric) {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConst.keyIsActiveBiometric, false);
  }
  unawaited(Get.offAllNamed(DeeplinkConstant.loginScreen));
}
