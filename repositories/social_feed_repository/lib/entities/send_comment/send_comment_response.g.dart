// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SendCommentResponse _$$_SendCommentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SendCommentResponse(
      metaData: json['metaData'] == null
          ? null
          : DataSendComment.fromJson(json['metaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SendCommentResponseToJson(
        _$_SendCommentResponse instance) =>
    <String, dynamic>{
      'metaData': instance.metaData,
    };

_$_DataSendComment _$$_DataSendCommentFromJson(Map<String, dynamic> json) =>
    _$_DataSendComment(
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_DataSendCommentToJson(_$_DataSendComment instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
