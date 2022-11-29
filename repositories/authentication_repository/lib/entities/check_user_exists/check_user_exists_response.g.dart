// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_user_exists_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckUserExistsResponse _$$_CheckUserExistsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CheckUserExistsResponse(
      userExists: json['userExists'] as bool?,
      userIsLocked: json['userIsLocked'] as bool?,
      userIsLockedOut: json['userIsLockedOut'] as bool?,
      otpRequestInDay: json['otpRequestInDay'] as int?,
    );

Map<String, dynamic> _$$_CheckUserExistsResponseToJson(
        _$_CheckUserExistsResponse instance) =>
    <String, dynamic>{
      'userExists': instance.userExists,
      'userIsLocked': instance.userIsLocked,
      'userIsLockedOut': instance.userIsLockedOut,
      'otpRequestInDay': instance.otpRequestInDay,
    };
