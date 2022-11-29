import 'package:core/core.dart';
import 'package:core/firebase/firebase_analytics_handler.dart';
import 'package:core/package_info/device_info_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/di/di_application.dart';
import 'package:flutter_app/generate_localization.dart';
import 'package:flutter_app/generate_route.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:wakelock/wakelock.dart';

Future<void> main() async {
  var widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  //init Enviroment
  await EnviromentHandler.initEnviroment(env: Env.stg);

  //package Info
  await PackageInfoHandler.getPackageInfo();

  //device Info
  await DeviceInfoHandler.getDeviceInfo();

  // localization
  await loadLocalization(Locale('vi', 'VN'));

  await FirebaseAnalyticsHandler().initFirebase();

  //di application
  buildApplicationDI();

  // remove splash scrren
  FlutterNativeSplash.remove();
  Wakelock.enable();
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return GetMaterialApp(
      initialRoute: DeeplinkConstant.waitingScreen,
      getPages: generatedRoutes,
      localizationsDelegates: localizations,
      supportedLocales: [Locale('en', 'US'), Locale('vi', 'VN')],
      locale: Locale('vi', 'VN'),
    );
  }));
}
