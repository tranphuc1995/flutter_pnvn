// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefreshTokenResponse _$$_RefreshTokenResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RefreshTokenResponse(
      data: json['data'] == null
          ? null
          : DataResponse.fromJson(json['data'] as Map<String, dynamic>),
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RefreshTokenResponseToJson(
        _$_RefreshTokenResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'metaData': instance.metaData,
    };

_$_DataResponse _$$_DataResponseFromJson(Map<String, dynamic> json) =>
    _$_DataResponse(
      token: json['token'] as String?,
      userId: json['userId'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$_DataResponseToJson(_$_DataResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userId': instance.userId,
      'refreshToken': instance.refreshToken,
    };

_$_MetaData _$$_MetaDataFromJson(Map<String, dynamic> json) => _$_MetaData(
      message: json['message'] as String?,
      errorCode: json['errorCode'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : ErrorData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MetaDataToJson(_$_MetaData instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errorCode': instance.errorCode,
      'errors': instance.errors,
    };

_$_ErrorData _$$_ErrorDataFromJson(Map<String, dynamic> json) => _$_ErrorData(
      field: json['field'] as String?,
      errorCode: json['errorCode'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ErrorDataToJson(_$_ErrorData instance) =>
    <String, dynamic>{
      'field': instance.field,
      'errorCode': instance.errorCode,
      'message': instance.message,
    };
