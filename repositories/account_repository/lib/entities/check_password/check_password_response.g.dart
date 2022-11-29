// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckPasswordResponse _$$_CheckPasswordResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CheckPasswordResponse(
      data: json['data'] == null
          ? null
          : DataCheckPassword.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CheckPasswordResponseToJson(
        _$_CheckPasswordResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_DataCheckPassword _$$_DataCheckPasswordFromJson(Map<String, dynamic> json) =>
    _$_DataCheckPassword(
      result: json['result'] as bool?,
    );

Map<String, dynamic> _$$_DataCheckPasswordToJson(
        _$_DataCheckPassword instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
