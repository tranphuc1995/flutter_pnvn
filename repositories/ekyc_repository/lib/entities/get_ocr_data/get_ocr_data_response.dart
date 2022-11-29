import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ocr_data_response.freezed.dart';
part 'get_ocr_data_response.g.dart';

@freezed
class GetOcrDataResponse with _$GetOcrDataResponse {
  const factory GetOcrDataResponse({DataGetOcr? data}) = _GetOcrDataResponse;

  factory GetOcrDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOcrDataResponseFromJson(json);
}

@freezed
class DataGetOcr with _$DataGetOcr {
  const factory DataGetOcr({
    int? type,
    String? avatar,
    String? idNumber,
    String? fullName,
    String? dayOfBirth,
    String? domicile,
    String? permanentAddress,
    String? idIssuedDate,
    String? idissuedPlace,
    String? frontImage,
    String? backImage,
    String? gender,
    String? nationality,
    String? ethnicity,
    String? religion,
    String? maritalStatus,
    String? email,
  }) = _DataGetOcr;

  factory DataGetOcr.fromJson(Map<String, dynamic> json) =>
      _$DataGetOcrFromJson(json);
}
