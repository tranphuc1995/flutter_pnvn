import 'dart:io';

import 'package:core/const/app_config.dart';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoHandler {
  static Future<void> getDeviceInfo() async {
    var deviceInfo = await DeviceInfoPlugin().deviceInfo;

    if (Platform.isAndroid) {
      AppConfig.uniqueDevice = deviceInfo.toMap()['id'];
    } else {
      AppConfig.uniqueDevice = deviceInfo.toMap()['identifierForVendor'];
    }
  }
}
