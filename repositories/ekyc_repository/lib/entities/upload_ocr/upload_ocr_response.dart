import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_ocr_response.freezed.dart';
part 'upload_ocr_response.g.dart';

@freezed
class UploadOcrResponse with _$UploadOcrResponse {
  const factory UploadOcrResponse({MetaDataOcr? metaData}) = _UploadOcrResponse;

  factory UploadOcrResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadOcrResponseFromJson(json);
}

@freezed
class MetaDataOcr with _$MetaDataOcr {
  const factory MetaDataOcr({String? status, String? message}) = _MetaDataOcr;

  factory MetaDataOcr.fromJson(Map<String, dynamic> json) =>
      _$MetaDataOcrFromJson(json);
}
