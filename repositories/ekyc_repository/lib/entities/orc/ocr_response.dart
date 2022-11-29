import 'package:freezed_annotation/freezed_annotation.dart';

part 'ocr_response.freezed.dart';
part 'ocr_response.g.dart';

@freezed
class OcrResponse with _$OcrResponse {
  const factory OcrResponse(
      {String? statusCode, String? error, Result? result}) = _OcrResponse;

  factory OcrResponse.fromJson(Map<String, dynamic> json) =>
      _$OcrResponseFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({List<Detail>? details}) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Detail with _$Detail {
  const factory Detail({FieldsExtracted? fieldsExtracted, String? type}) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}

@freezed
class FieldsExtracted with _$FieldsExtracted {
  const factory FieldsExtracted(
      {Province? province,
      IdNumber? idNumber,
      Name? name,
      Dob? dob,
      HomeTown? homeTown,
      PermanentAddress? permanentAddress,
      Gender? gender,
      Doe? doe,
      Nationality? nationality,
      Doi? doi,
      PlaceOfIssue? placeOfIssue,
      Ethnicity? ethnicity}) = _FieldsExtracted;

  factory FieldsExtracted.fromJson(Map<String, dynamic> json) =>
      _$FieldsExtractedFromJson(json);
}

@freezed
class Province with _$Province {
  const factory Province({String? value}) = _Province;

  factory Province.fromJson(Map<String, dynamic> json) =>
      _$ProvinceFromJson(json);
}

@freezed
class IdNumber with _$IdNumber {
  const factory IdNumber({String? value}) = _IdNumber;

  factory IdNumber.fromJson(Map<String, dynamic> json) =>
      _$IdNumberFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({String? value}) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class Dob with _$Dob {
  const factory Dob({String? value}) = _Dob;

  factory Dob.fromJson(Map<String, dynamic> json) => _$DobFromJson(json);
}

@freezed
class HomeTown with _$HomeTown {
  const factory HomeTown({String? value}) = _HomeTown;

  factory HomeTown.fromJson(Map<String, dynamic> json) =>
      _$HomeTownFromJson(json);
}

@freezed
class PermanentAddress with _$PermanentAddress {
  const factory PermanentAddress({String? value}) = _PermanentAddress;

  factory PermanentAddress.fromJson(Map<String, dynamic> json) =>
      _$PermanentAddressFromJson(json);
}

@freezed
class Gender with _$Gender {
  const factory Gender({String? value}) = _Gender;

  factory Gender.fromJson(Map<String, dynamic> json) => _$GenderFromJson(json);
}

@freezed
class Doe with _$Doe {
  const factory Doe({String? value}) = _Doe;

  factory Doe.fromJson(Map<String, dynamic> json) => _$DoeFromJson(json);
}

@freezed
class Nationality with _$Nationality {
  const factory Nationality({String? value}) = _Nationality;

  factory Nationality.fromJson(Map<String, dynamic> json) =>
      _$NationalityFromJson(json);
}

@freezed
class Doi with _$Doi {
  const factory Doi({String? value}) = _Doi;

  factory Doi.fromJson(Map<String, dynamic> json) => _$DoiFromJson(json);
}

@freezed
class PlaceOfIssue with _$PlaceOfIssue {
  const factory PlaceOfIssue({String? value}) = _PlaceOfIssue;

  factory PlaceOfIssue.fromJson(Map<String, dynamic> json) =>
      _$PlaceOfIssueFromJson(json);
}

@freezed
class Ethnicity with _$Ethnicity {
  const factory Ethnicity({String? value}) = _Ethnicity;

  factory Ethnicity.fromJson(Map<String, dynamic> json) =>
      _$EthnicityFromJson(json);
}