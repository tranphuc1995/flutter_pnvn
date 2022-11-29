import 'package:authentication_repository/entities/check_user_exists/check_user_exists_response.dart';
import 'package:authentication_repository/entities/login/login_response.dart';
import 'package:authentication_repository/entities/register/register_response.dart';
import 'package:authentication_repository/repo/authentication_repo.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AuthenticationRepoImpl extends AuthenticationRepo {
  final Dio _dio = Get.find();
  final String pathUserExists = '/api/v2/Account/check-user-exists';
  final String pathLogin = '/api/v2/Account/login';
  final String pathRegisterUser = '/api/v2/Account/register-user';

  final String pathSendOtpRegister = '/api/v2/Account/send-otp-register';
  final String pathReSendOtpRegister = '/api/v2/Account/resend-otp-register';
  final String pathVerifyOtpRegister = '/api/v2/Account/verify-otp-register';

  final String pathForgotPassword = '/api/v2/Account/forgot-password';
  final String pathResendOtpForgotPassword =
      '/api/v2/Account/resend-otp-forgot-password';
  final String pathVefifyOtpForgotPassword =
      '/api/v2/Account/verify-otp-forgot-password';
  final String pathResetPassword = '/api/v2/Account/reset-password';
  final String pathSendOtpChangePassword =
      '/api/v2/Account/send-otp-change-password';
  final String pathReSendOtpChangePassword =
      '/api/v2/Account/resend-otp-change-password';
  final String pathChangePassword = '/api/v2/Account/change-password';
  final String refreshToken = '/api/v2/Account/refresh-token';

  @override
  Future<CheckUserExistsResponse> checkUserExists(
      {required String phone}) async {
    try {
      var response = await _dio.post(pathUserExists, data: {'userName': phone});
      return CheckUserExistsResponse.fromJson(response.data['data']);
    } catch (e) {
      return (const CheckUserExistsResponse(userExists: false));
    }
  }

  @override
  Future<LoginResponse> login(
      {required String phone, required String password}) async {
    try {
      var response = await _dio
          .post(pathLogin, data: {'userName': phone, 'password': password});
      return LoginResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return LoginResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<RegisterResponse> registerUser(
      {required String otp,
      required String userName,
      required String password,
      required String nickname}) async {
    try {
      var response = await _dio.post(pathRegisterUser, data: {
        'otp': otp,
        'userName': userName,
        'password': password,
        'nickname': nickname
      });
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RegisterResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<RegisterResponse> resetPassword(
      {required String otp,
      required String userName,
      required String password}) async {
    try {
      var response = await _dio.put(pathResetPassword,
          data: {'otp': otp, 'userName': userName, 'newPassword': password});
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RegisterResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<RegisterResponse> sendOtpRegister(
      {required String phoneNumber}) async {
    try {
      var response = await _dio
          .post(pathSendOtpRegister, data: {'phoneNumber': phoneNumber});
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RegisterResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<RegisterResponse> reSendOtpRegister(
      {required String phoneNumber}) async {
    try {
      var response = await _dio
          .post(pathReSendOtpRegister, data: {'phoneNumber': phoneNumber});
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RegisterResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<RegisterResponse> verifyOtpRegister(
      {required String phoneNumber, required String otp}) async {
    try {
      var response = await _dio.post(pathVerifyOtpRegister,
          data: {'phoneNumber': phoneNumber, 'otp': otp});
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RegisterResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<RegisterResponse> fogotPassword({required String phoneNumber}) async {
    try {
      var response =
          await _dio.post(pathForgotPassword, data: {'userName': phoneNumber});
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RegisterResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<RegisterResponse> resendOtpFogotPassword(
      {required String phoneNumber}) async {
    try {
      var response = await _dio
          .post(pathResendOtpForgotPassword, data: {'userName': phoneNumber});
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RegisterResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<RegisterResponse> verifyOtpFogotPassword(
      {required String phoneNumber, required String otp}) async {
    try {
      var response = await _dio.post(pathVefifyOtpForgotPassword,
          data: {'phoneNumber': phoneNumber, 'otp': otp});
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RegisterResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<RegisterResponse> sendOtpChangePassword(
      {required String phoneNumber,
      required String currentPassword,
      required String newPassword}) async {
    try {
      var response = await _dio.post(pathSendOtpChangePassword, data: {
        'phoneNumber': phoneNumber,
        'currentPassword': currentPassword,
        'newPassword': newPassword
      });
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RegisterResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<RegisterResponse> changePassword(
      {required String otp,
      required String currentPassword,
      required String newPassword}) async {
    try {
      var response = await _dio.put(pathChangePassword, data: {
        'otp': otp,
        'currentPassword': currentPassword,
        'newPassword': newPassword
      });
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RegisterResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<RegisterResponse> reSendOtpChangePassword(
      {required String phoneNumber,
      required String currentPassword,
      required String newPassword}) async {
    try {
      var response = await _dio.post(pathReSendOtpChangePassword, data: {
        'phoneNumber': phoneNumber,
        'currentPassword': currentPassword,
        'newPassword': newPassword
      });
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RegisterResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<LoginResponse> getRefreshToken(
      {required String token, required String refreshToken}) async {
    try {
      var response = await _dio.post(refreshToken, data: {
        'accessToken': token,
        'refreshToken': refreshToken,
      });
      return LoginResponse.fromJson(response.data);
    } catch (e) {
      return const LoginResponse();
    }
  }
}
