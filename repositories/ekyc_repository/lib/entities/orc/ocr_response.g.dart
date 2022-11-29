// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ocr_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OcrResponse _$$_OcrResponseFromJson(Map<String, dynamic> json) =>
    _$_OcrResponse(
      statusCode: json['statusCode'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OcrResponseToJson(_$_OcrResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => Detail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'details': instance.details,
    };

_$_Detail _$$_DetailFromJson(Map<String, dynamic> json) => _$_Detail(
      fieldsExtracted: json['fieldsExtracted'] == null
          ? null
          : FieldsExtracted.fromJson(
              json['fieldsExtracted'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_DetailToJson(_$_Detail instance) => <String, dynamic>{
      'fieldsExtracted': instance.fieldsExtracted,
      'type': instance.type,
    };

_$_FieldsExtracted _$$_FieldsExtractedFromJson(Map<String, dynamic> json) =>
    _$_FieldsExtracted(
      province: json['province'] == null
          ? null
          : Province.fromJson(json['province'] as Map<String, dynamic>),
      idNumber: json['idNumber'] == null
          ? null
          : IdNumber.fromJson(json['idNumber'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      dob: json['dob'] == null
          ? null
          : Dob.fromJson(json['dob'] as Map<String, dynamic>),
      homeTown: json['homeTown'] == null
          ? null
          : HomeTown.fromJson(json['homeTown'] as Map<String, dynamic>),
      permanentAddress: json['permanentAddress'] == null
          ? null
          : PermanentAddress.fromJson(
              json['permanentAddress'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      doe: json['doe'] == null
          ? null
          : Doe.fromJson(json['doe'] as Map<String, dynamic>),
      nationality: json['nationality'] == null
          ? null
          : Nationality.fromJson(json['nationality'] as Map<String, dynamic>),
      doi: json['doi'] == null
          ? null
          : Doi.fromJson(json['doi'] as Map<String, dynamic>),
      placeOfIssue: json['placeOfIssue'] == null
          ? null
          : PlaceOfIssue.fromJson(json['placeOfIssue'] as Map<String, dynamic>),
      ethnicity: json['ethnicity'] == null
          ? null
          : Ethnicity.fromJson(json['ethnicity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FieldsExtractedToJson(_$_FieldsExtracted instance) =>
    <String, dynamic>{
      'province': instance.province,
      'idNumber': instance.idNumber,
      'name': instance.name,
      'dob': instance.dob,
      'homeTown': instance.homeTown,
      'permanentAddress': instance.permanentAddress,
      'gender': instance.gender,
      'doe': instance.doe,
      'nationality': instance.nationality,
      'doi': instance.doi,
      'placeOfIssue': instance.placeOfIssue,
      'ethnicity': instance.ethnicity,
    };

_$_Province _$$_ProvinceFromJson(Map<String, dynamic> json) => _$_Province(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_ProvinceToJson(_$_Province instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_IdNumber _$$_IdNumberFromJson(Map<String, dynamic> json) => _$_IdNumber(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_IdNumberToJson(_$_IdNumber instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_Name _$$_NameFromJson(Map<String, dynamic> json) => _$_Name(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_NameToJson(_$_Name instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_Dob _$$_DobFromJson(Map<String, dynamic> json) => _$_Dob(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_DobToJson(_$_Dob instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_HomeTown _$$_HomeTownFromJson(Map<String, dynamic> json) => _$_HomeTown(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_HomeTownToJson(_$_HomeTown instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_PermanentAddress _$$_PermanentAddressFromJson(Map<String, dynamic> json) =>
    _$_PermanentAddress(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_PermanentAddressToJson(_$_PermanentAddress instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_Gender _$$_GenderFromJson(Map<String, dynamic> json) => _$_Gender(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_GenderToJson(_$_Gender instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_Doe _$$_DoeFromJson(Map<String, dynamic> json) => _$_Doe(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_DoeToJson(_$_Doe instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_Nationality _$$_NationalityFromJson(Map<String, dynamic> json) =>
    _$_Nationality(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_NationalityToJson(_$_Nationality instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_Doi _$$_DoiFromJson(Map<String, dynamic> json) => _$_Doi(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_DoiToJson(_$_Doi instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_PlaceOfIssue _$$_PlaceOfIssueFromJson(Map<String, dynamic> json) =>
    _$_PlaceOfIssue(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_PlaceOfIssueToJson(_$_PlaceOfIssue instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_Ethnicity _$$_EthnicityFromJson(Map<String, dynamic> json) => _$_Ethnicity(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_EthnicityToJson(_$_Ethnicity instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
