import 'package:core/const/app_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoHandler {
  static Future<void> getPackageInfo() async {
    var packageInfo = await PackageInfo.fromPlatform();
    AppConfig.versionName = packageInfo.version;
    AppConfig.versionCode = packageInfo.buildNumber;
  }
}
