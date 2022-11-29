import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_password_response.freezed.dart';
part 'check_password_response.g.dart';

@freezed
class CheckPasswordResponse with _$CheckPasswordResponse {
  const factory CheckPasswordResponse({DataCheckPassword? data}) =
      _CheckPasswordResponse;

  factory CheckPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckPasswordResponseFromJson(json);
}

@freezed
class DataCheckPassword with _$DataCheckPassword {
  const factory DataCheckPassword({bool? result}) = _DataCheckPassword;

  factory DataCheckPassword.fromJson(Map<String, dynamic> json) =>
      _$DataCheckPasswordFromJson(json);
}
