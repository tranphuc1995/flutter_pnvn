import 'package:account_repository/entities/feed_back/feed_back_response.dart';
import 'package:account_repository/entities/personal_info/personal_info_response.dart';
import 'package:account_repository/entities/refresh_token/refresh_token_response.dart';
import 'package:dio/dio.dart';

import '../entities/check_password/check_password_response.dart';
import 'account_repo.dart';
import 'package:get/get.dart';

class AccountRepoImpl extends AccountRepo {
  final Dio _dio = Get.find();
  final String pathFeedBack = '/api/v2/Feedback';
  final String pathPersonalInfo = '/api/v2/Account/me';
  final String pathCheckPassword = '/api/v2/Account/check-password';
  final String pathRefreshToken = '/api/v2/Account/refresh-token';
  @override
  Future<FeedBackResponse> submitFeedBack({required String content}) async {
    try {
      var response = await _dio.post(pathFeedBack, data: {'content': content});
      return FeedBackResponse.fromJson(response.data);
    } catch (e) {
      return (const FeedBackResponse());
    }
  }

  @override
  Future<PersonalInfoResponse> getPersonalInfo() async {
    try {
      var response = await _dio.get(pathPersonalInfo);
      return PersonalInfoResponse.fromJson(response.data['data']);
    } catch (e) {
      return (const PersonalInfoResponse());
    }
  }

  @override
  Future<CheckPasswordResponse> checkPassword(
      {required String password}) async {
    try {
      var response =
          await _dio.post(pathCheckPassword, data: {'password': password});
      return CheckPasswordResponse.fromJson(response.data);
    } catch (e) {
      return (const CheckPasswordResponse());
    }
  }

  @override
  Future<RefreshTokenResponse> getRefreshToken(
      {required String token, required String refreshToken}) async {
    try {
      var response = await _dio.post(pathRefreshToken, data: {
        'accessToken': token,
        'refreshToken': refreshToken,
      });
      return RefreshTokenResponse.fromJson(response.data);
    } catch (e) {
      return const RefreshTokenResponse();
    }
  }
}
