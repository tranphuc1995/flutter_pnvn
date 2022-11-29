// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterResponse _$$_RegisterResponseFromJson(Map<String, dynamic> json) =>
    _$_RegisterResponse(
      data: json['data'] == null
          ? null
          : DataRegisterResponse.fromJson(json['data'] as Map<String, dynamic>),
      metaData: json['metaData'] == null
          ? null
          : MetaDataRegister.fromJson(json['metaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterResponseToJson(_$_RegisterResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'metaData': instance.metaData,
    };

_$_DataRegisterResponse _$$_DataRegisterResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DataRegisterResponse(
      userName: json['userName'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$_DataRegisterResponseToJson(
        _$_DataRegisterResponse instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userId': instance.userId,
    };

_$_MetaDataRegister _$$_MetaDataRegisterFromJson(Map<String, dynamic> json) =>
    _$_MetaDataRegister(
      message: json['message'] as String?,
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ErrorDataRegister.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MetaDataRegisterToJson(_$_MetaDataRegister instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'errorCode': instance.errorCode,
      'errors': instance.errors,
    };

_$_ErrorDataRegister _$$_ErrorDataRegisterFromJson(Map<String, dynamic> json) =>
    _$_ErrorDataRegister(
      field: json['field'] as String?,
      errorCode: json['errorCode'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ErrorDataRegisterToJson(
        _$_ErrorDataRegister instance) =>
    <String, dynamic>{
      'field': instance.field,
      'errorCode': instance.errorCode,
      'message': instance.message,
    };
