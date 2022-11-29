// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_url_video_new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetUrlVideoNew _$$_GetUrlVideoNewFromJson(Map<String, dynamic> json) =>
    _$_GetUrlVideoNew(
      ItemList: json['ItemList'] == null
          ? null
          : ItemListDetail.fromJson(json['ItemList'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetUrlVideoNewToJson(_$_GetUrlVideoNew instance) =>
    <String, dynamic>{
      'ItemList': instance.ItemList,
    };

_$_ItemListDetail _$$_ItemListDetailFromJson(Map<String, dynamic> json) =>
    _$_ItemListDetail(
      video: json['video'] == null
          ? null
          : VideoDetail.fromJson(json['video'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemListDetailToJson(_$_ItemListDetail instance) =>
    <String, dynamic>{
      'video': instance.video,
    };

_$_VideoDetail _$$_VideoDetailFromJson(Map<String, dynamic> json) =>
    _$_VideoDetail(
      preloadList: (json['preloadList'] as List<dynamic>?)
          ?.map((e) => Preload.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VideoDetailToJson(_$_VideoDetail instance) =>
    <String, dynamic>{
      'preloadList': instance.preloadList,
    };

_$_Preload _$$_PreloadFromJson(Map<String, dynamic> json) => _$_Preload(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PreloadToJson(_$_Preload instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
