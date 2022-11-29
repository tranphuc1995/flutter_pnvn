import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_response.freezed.dart';
part 'upload_file_response.g.dart';

@freezed
class UploadFileResponse with _$UploadFileResponse {
  const factory UploadFileResponse({DataUploadFile? data}) =
      _UploadFileResponse;

  factory UploadFileResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadFileResponseFromJson(json);
}

@freezed
class DataUploadFile with _$DataUploadFile {
  const factory DataUploadFile({String? fileUrlOrigin, String? fileUrl}) =
      _DataUploadFile;

  factory DataUploadFile.fromJson(Map<String, dynamic> json) =>
      _$DataUploadFileFromJson(json);
}
