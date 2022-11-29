// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListCommentResponse _$$_ListCommentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListCommentResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataListComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListCommentResponseToJson(
        _$_ListCommentResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_DataListComment _$$_DataListCommentFromJson(Map<String, dynamic> json) =>
    _$_DataListComment(
      id: json['id'] as String?,
      comment: json['comment'] as String?,
      nickname: json['nickname'] as String?,
      avatar: json['avatar'] as String?,
      createdDate: json['createdDate'] as String?,
    );

Map<String, dynamic> _$$_DataListCommentToJson(_$_DataListComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'nickname': instance.nickname,
      'avatar': instance.avatar,
      'createdDate': instance.createdDate,
    };
