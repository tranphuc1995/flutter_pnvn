// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoadCommentResponse _$$_LoadCommentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LoadCommentResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataLoadComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LoadCommentResponseToJson(
        _$_LoadCommentResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_DataLoadComment _$$_DataLoadCommentFromJson(Map<String, dynamic> json) =>
    _$_DataLoadComment(
      id: json['id'] as String?,
      nickName: json['nickName'] as String?,
      avatar: json['avatar'] as String?,
      createdDate: json['createdDate'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$_DataLoadCommentToJson(_$_DataLoadComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickName': instance.nickName,
      'avatar': instance.avatar,
      'createdDate': instance.createdDate,
      'comment': instance.comment,
    };
