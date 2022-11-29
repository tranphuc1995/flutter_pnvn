import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({DataResponse? data, MetaData? metaData}) =
      _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class DataResponse with _$DataResponse {
  const factory DataResponse(
      {String? token, String? userId, String? refreshToken}) = _DataResponse;

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);
}

@freezed
class MetaData with _$MetaData {
  const factory MetaData(
      {String? message,
      String? errorCode,
      List<ErrorData?>? errors}) = _MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
}

@freezed
class ErrorData with _$ErrorData {
  const factory ErrorData({String? field, String? errorCode, String? message}) =
      _ErrorData;

  factory ErrorData.fromJson(Map<String, dynamic> json) =>
      _$ErrorDataFromJson(json);
}
