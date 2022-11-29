// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalInfoResponse _$$_PersonalInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalInfoResponse(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      fullName: json['fullName'] as String?,
      avatar: json['avatar'] as String?,
      nickname: json['nickname'] as String?,
      userStatus: json['userStatus'] as int?,
    );

Map<String, dynamic> _$$_PersonalInfoResponseToJson(
        _$_PersonalInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'nickname': instance.nickname,
      'userStatus': instance.userStatus,
    };
