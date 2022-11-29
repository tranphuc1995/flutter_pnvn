// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_back_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedBackResponse _$$_FeedBackResponseFromJson(Map<String, dynamic> json) =>
    _$_FeedBackResponse(
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedBackResponseToJson(_$_FeedBackResponse instance) =>
    <String, dynamic>{
      'metaData': instance.metaData,
    };

_$_MetaData _$$_MetaDataFromJson(Map<String, dynamic> json) => _$_MetaData(
      message: json['message'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_MetaDataToJson(_$_MetaData instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };
