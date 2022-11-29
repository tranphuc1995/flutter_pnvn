import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse(
      {DataRegisterResponse? data,
      MetaDataRegister? metaData}) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@freezed
class DataRegisterResponse with _$DataRegisterResponse {
  const factory DataRegisterResponse({String? userName, String? userId}) =
      _DataRegisterResponse;

  factory DataRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$DataRegisterResponseFromJson(json);
}

@freezed
class MetaDataRegister with _$MetaDataRegister {
  const factory MetaDataRegister(
      {String? message,
      String? status,
      String? errorCode,
      List<ErrorDataRegister?>? errors}) = _MetaDataRegister;

  factory MetaDataRegister.fromJson(Map<String, dynamic> json) =>
      _$MetaDataRegisterFromJson(json);
}

@freezed
class ErrorDataRegister with _$ErrorDataRegister {
  const factory ErrorDataRegister(
      {String? field, String? errorCode, String? message}) = _ErrorDataRegister;

  factory ErrorDataRegister.fromJson(Map<String, dynamic> json) =>
      _$ErrorDataRegisterFromJson(json);
}
