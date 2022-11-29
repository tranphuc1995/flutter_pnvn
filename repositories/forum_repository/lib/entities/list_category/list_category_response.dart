import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_category_response.freezed.dart';
part 'list_category_response.g.dart';

@freezed
class ListCategoryResponse with _$ListCategoryResponse {
  const factory ListCategoryResponse({List<DataCategory>? data}) =
      _ListCategoryResponse;

  factory ListCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ListCategoryResponseFromJson(json);
}

@freezed
class DataCategory with _$DataCategory {
  const factory DataCategory({String? id, String? name, int? totalPosts}) =
      _DataCategory;

  factory DataCategory.fromJson(Map<String, dynamic> json) =>
      _$DataCategoryFromJson(json);
}
