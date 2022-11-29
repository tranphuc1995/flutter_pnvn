import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:core/network/app_interceptor.dart';
import 'package:get/get.dart';

void provideNetworkModule() {
  Get.put(const FlutterSecureStorage(), permanent: true);
  Get.put(Dio()..interceptors.add(AppInterceptor()), permanent: true);
}
