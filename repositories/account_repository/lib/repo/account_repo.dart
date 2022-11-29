import 'package:account_repository/entities/check_password/check_password_response.dart';
import 'package:account_repository/entities/feed_back/feed_back_response.dart';
import 'package:account_repository/entities/personal_info/personal_info_response.dart';
import 'package:account_repository/entities/refresh_token/refresh_token_response.dart';

abstract class AccountRepo {
  Future<FeedBackResponse> submitFeedBack({required String content});
  Future<PersonalInfoResponse> getPersonalInfo();
  Future<CheckPasswordResponse> checkPassword({required String password});
  Future<RefreshTokenResponse> getRefreshToken(
      {required String token, required String refreshToken});
}
