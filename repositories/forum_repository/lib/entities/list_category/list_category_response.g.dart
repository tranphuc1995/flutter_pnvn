// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListCategoryResponse _$$_ListCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListCategoryResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListCategoryResponseToJson(
        _$_ListCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_DataCategory _$$_DataCategoryFromJson(Map<String, dynamic> json) =>
    _$_DataCategory(
      id: json['id'] as String?,
      name: json['name'] as String?,
      totalPosts: json['totalPosts'] as int?,
    );

Map<String, dynamic> _$$_DataCategoryToJson(_$_DataCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'totalPosts': instance.totalPosts,
    };
