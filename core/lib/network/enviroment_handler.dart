import 'package:core/const/app_config.dart';
import 'package:core/const/app_const.dart';

class EnviromentHandler {
  static Future<void> initEnviroment({required Env env}) async {
    switch (env) {
      case Env.dev:
        AppConfig.currentEnviroment = AppConst.domainDev;
        break;
      case Env.stg:
        AppConfig.currentEnviroment = AppConst.domainStaging;
        break;
      case Env.pro:
        AppConfig.currentEnviroment = AppConst.domainProduction;
        break;
    }
  }
}

enum Env { dev, stg, pro }
