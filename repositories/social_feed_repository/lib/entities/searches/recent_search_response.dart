import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_search_response.freezed.dart';
part 'recent_search_response.g.dart';

@freezed
class RecentSearchResponse with _$RecentSearchResponse {
  const factory RecentSearchResponse({List<DataRecentSearch>? data}) =
      _RecentSearchResponse;

  factory RecentSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$RecentSearchResponseFromJson(json);
}

@freezed
class DataRecentSearch with _$DataRecentSearch {
  const factory DataRecentSearch({String? keyword, String? keywordType}) =
      _DataRecentSearch;

  factory DataRecentSearch.fromJson(Map<String, dynamic> json) =>
      _$DataRecentSearchFromJson(json);
}
