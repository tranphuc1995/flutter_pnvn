import 'dart:convert';
import 'dart:developer';
import 'package:core/network/internet_handler.dart';
import 'package:core/widgets/bottom_sheet_helper.dart';
import 'package:dio/dio.dart';
import '../const/app_config.dart';

class AppInterceptor extends Interceptor {
  final bool? printOnSuccess;
  final bool convertFormData;

  AppInterceptor({this.printOnSuccess, this.convertFormData = true});

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var hasInternet = await checkInterAvailable();
    if (hasInternet) {
      options.baseUrl = AppConfig.currentEnviroment;
      options.headers['DeviceId'] = AppConfig.uniqueDevice;
      if (!AppConfig.isGuest) {
        if (AppConfig.currentToken != '') {
          options.headers['Authorization'] = 'Bearer ' + AppConfig.currentToken;
          options.headers['content-type'] = 'application/json';
        }
      }
      log('========================= REQUEST ===========================================================================');
      log('\n');
      log(_cURLRepresentation(options));
      log('\n');
      return super.onRequest(options, handler);
    } else {
      showBottomSheetHelper(botttomSheetType: BotttomSheetType.noNetwork);
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('========================= RESPONSE ===========================================================================');
    log('\n');
    log(response.data.toString());
    log('\n');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('========================= ERROR ===========================================================================');
    log('\n');
    log(err.response.toString());
    log('\n');
    var errorCode =
        err.response?.data['metaData']['errorCode'].toString() ?? '';
    if (errorCode == 'ER018' || errorCode == '401') {
      showBottomSheetHelper(botttomSheetType: BotttomSheetType.forceLogout);
    } else {
      return super.onError(err, handler);
    }
  }

  String _cURLRepresentation(RequestOptions options) {
    var components = ['curl -i'];
    if (options.method.toUpperCase() != 'GET') {
      components.add('-X ${options.method}');
    }

    options.headers.forEach((k, v) {
      if (k != 'Cookie') {
        components.add('-H "$k: $v"');
      }
    });

    if (options.data != null) {
      // FormData can't be JSON-serialized, so keep only their fields attributes
      if (options.data is FormData && convertFormData == true) {
        options.data = Map.fromEntries(options.data.fields);
      }

      final data = json.encode(options.data).replaceAll('"', '\\"');
      components.add('-d "$data"');
    }

    components.add('"${options.uri.toString()}"');

    return components.join(' \\\n\t');
  }
}
