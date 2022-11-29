// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_nickname_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateNicknameResponse _$$_UpdateNicknameResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateNicknameResponse(
      metaData: json['metaData'] == null
          ? null
          : MetaDataNickname.fromJson(json['metaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UpdateNicknameResponseToJson(
        _$_UpdateNicknameResponse instance) =>
    <String, dynamic>{
      'metaData': instance.metaData,
    };

_$_MetaDataNickname _$$_MetaDataNicknameFromJson(Map<String, dynamic> json) =>
    _$_MetaDataNickname(
      status: json['status'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorNickname.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MetaDataNicknameToJson(_$_MetaDataNickname instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errors': instance.errors,
    };

_$_ErrorNickname _$$_ErrorNicknameFromJson(Map<String, dynamic> json) =>
    _$_ErrorNickname(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ErrorNicknameToJson(_$_ErrorNickname instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
