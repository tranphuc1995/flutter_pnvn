// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_video_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailVideoResponse _$$_DetailVideoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DetailVideoResponse(
      data: json['data'] == null
          ? null
          : DataVideoDetail.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailVideoResponseToJson(
        _$_DetailVideoResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_DataVideoDetail _$$_DataVideoDetailFromJson(Map<String, dynamic> json) =>
    _$_DataVideoDetail(
      likeCount: json['likeCount'] as int?,
      commentCount: json['commentCount'] as int?,
      isLiked: json['isLiked'] as bool?,
    );

Map<String, dynamic> _$$_DataVideoDetailToJson(_$_DataVideoDetail instance) =>
    <String, dynamic>{
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'isLiked': instance.isLiked,
    };
