// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ocr_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetOcrDataResponse _$$_GetOcrDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetOcrDataResponse(
      data: json['data'] == null
          ? null
          : DataGetOcr.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetOcrDataResponseToJson(
        _$_GetOcrDataResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_DataGetOcr _$$_DataGetOcrFromJson(Map<String, dynamic> json) =>
    _$_DataGetOcr(
      type: json['type'] as int?,
      avatar: json['avatar'] as String?,
      idNumber: json['idNumber'] as String?,
      fullName: json['fullName'] as String?,
      dayOfBirth: json['dayOfBirth'] as String?,
      domicile: json['domicile'] as String?,
      permanentAddress: json['permanentAddress'] as String?,
      idIssuedDate: json['idIssuedDate'] as String?,
      idissuedPlace: json['idissuedPlace'] as String?,
      frontImage: json['frontImage'] as String?,
      backImage: json['backImage'] as String?,
      gender: json['gender'] as String?,
      nationality: json['nationality'] as String?,
      ethnicity: json['ethnicity'] as String?,
      religion: json['religion'] as String?,
      maritalStatus: json['maritalStatus'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_DataGetOcrToJson(_$_DataGetOcr instance) =>
    <String, dynamic>{
      'type': instance.type,
      'avatar': instance.avatar,
      'idNumber': instance.idNumber,
      'fullName': instance.fullName,
      'dayOfBirth': instance.dayOfBirth,
      'domicile': instance.domicile,
      'permanentAddress': instance.permanentAddress,
      'idIssuedDate': instance.idIssuedDate,
      'idissuedPlace': instance.idissuedPlace,
      'frontImage': instance.frontImage,
      'backImage': instance.backImage,
      'gender': instance.gender,
      'nationality': instance.nationality,
      'ethnicity': instance.ethnicity,
      'religion': instance.religion,
      'maritalStatus': instance.maritalStatus,
      'email': instance.email,
    };
