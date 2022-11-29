// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecentSearchResponse _$$_RecentSearchResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RecentSearchResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataRecentSearch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecentSearchResponseToJson(
        _$_RecentSearchResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_DataRecentSearch _$$_DataRecentSearchFromJson(Map<String, dynamic> json) =>
    _$_DataRecentSearch(
      keyword: json['keyword'] as String?,
      keywordType: json['keywordType'] as String?,
    );

Map<String, dynamic> _$$_DataRecentSearchToJson(_$_DataRecentSearch instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'keywordType': instance.keywordType,
    };
