// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryResponse _$$_CategoryResponseFromJson(Map<String, dynamic> json) =>
    _$_CategoryResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryResponseToJson(_$_CategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_DataCategory _$$_DataCategoryFromJson(Map<String, dynamic> json) =>
    _$_DataCategory(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_DataCategoryToJson(_$_DataCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
