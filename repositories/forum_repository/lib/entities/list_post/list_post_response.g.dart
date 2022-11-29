// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListPostResponse _$$_ListPostResponseFromJson(Map<String, dynamic> json) =>
    _$_ListPostResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListPostResponseToJson(_$_ListPostResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_DataPost _$$_DataPostFromJson(Map<String, dynamic> json) => _$_DataPost(
      id: json['id'] as String?,
      title: json['title'] as String?,
      thumbnail: json['thumbnail'] as String?,
      shortDescription: json['shortDescription'] as String?,
      description: json['description'] as String?,
      author: json['author'] as String?,
      publishedDate: json['publishedDate'] as String?,
      viewCountText: json['viewCountText'] as String?,
      commentCountText: json['commentCountText'] as String?,
      avatar: json['avatar'] as String?,
      category: json['category'] == null
          ? null
          : CategoryPost.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataPostToJson(_$_DataPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'shortDescription': instance.shortDescription,
      'description': instance.description,
      'author': instance.author,
      'publishedDate': instance.publishedDate,
      'viewCountText': instance.viewCountText,
      'commentCountText': instance.commentCountText,
      'avatar': instance.avatar,
      'category': instance.category,
    };

_$_CategoryPost _$$_CategoryPostFromJson(Map<String, dynamic> json) =>
    _$_CategoryPost(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CategoryPostToJson(_$_CategoryPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
