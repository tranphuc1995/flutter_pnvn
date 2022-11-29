import 'package:authentication_repository/entities/check_user_exists/check_user_exists_response.dart';
import 'package:authentication_repository/entities/login/login_response.dart';

import '../entities/register/register_response.dart';

abstract class AuthenticationRepo {
  Future<CheckUserExistsResponse> checkUserExists({required String phone});
  Future<LoginResponse> login(
      {required String phone, required String password});
  Future<RegisterResponse> registerUser(
      {required String otp,
      required String userName,
      required String password,
      required String nickname});

  Future<RegisterResponse> fogotPassword({required String phoneNumber});

  Future<RegisterResponse> resendOtpFogotPassword(
      {required String phoneNumber});
  Future<RegisterResponse> verifyOtpFogotPassword(
      {required String phoneNumber, required String otp});

  Future<RegisterResponse> resetPassword(
      {required String otp,
      required String userName,
      required String password});

  Future<RegisterResponse> sendOtpRegister({required String phoneNumber});

  Future<RegisterResponse> reSendOtpRegister({required String phoneNumber});

  Future<RegisterResponse> verifyOtpRegister(
      {required String phoneNumber, required String otp});

  Future<RegisterResponse> sendOtpChangePassword(
      {required String phoneNumber,
      required String currentPassword,
      required String newPassword});

  Future<RegisterResponse> reSendOtpChangePassword(
      {required String phoneNumber,
      required String currentPassword,
      required String newPassword});

  Future<RegisterResponse> changePassword(
      {required String otp,
      required String currentPassword,
      required String newPassword});

  Future<LoginResponse> getRefreshToken(
      {required String token, required String refreshToken});
}
