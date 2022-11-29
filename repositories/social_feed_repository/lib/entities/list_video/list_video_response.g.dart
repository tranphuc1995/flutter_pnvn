// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_video_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListVideoResponse _$$_ListVideoResponseFromJson(Map<String, dynamic> json) =>
    _$_ListVideoResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListVideoResponseToJson(
        _$_ListVideoResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as String?,
      videoId: json['videoId'] as String?,
      title: json['title'] as String?,
      uploadedDate: json['uploadedDate'] as String?,
      imageUrl: json['imageUrl'] as String?,
      authorName: json['authorName'] as String?,
      videoUrl: json['videoUrl'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'videoId': instance.videoId,
      'title': instance.title,
      'uploadedDate': instance.uploadedDate,
      'imageUrl': instance.imageUrl,
      'authorName': instance.authorName,
      'videoUrl': instance.videoUrl,
    };
