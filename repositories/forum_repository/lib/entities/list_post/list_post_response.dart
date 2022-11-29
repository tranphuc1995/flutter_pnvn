import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_post_response.freezed.dart';
part 'list_post_response.g.dart';

@freezed
class ListPostResponse with _$ListPostResponse {
  const factory ListPostResponse({List<DataPost>? data}) = _ListPostResponse;

  factory ListPostResponse.fromJson(Map<String, dynamic> json) =>
      _$ListPostResponseFromJson(json);
}

@freezed
class DataPost with _$DataPost {
  const factory DataPost({
    String? id,
    String? title,
    String? thumbnail,
    String? shortDescription,
    String? description,
    String? author,
    String? publishedDate,
    String? viewCountText,
    String? commentCountText,
    String? avatar,
    CategoryPost? category,
  }) = _DataPost;

  factory DataPost.fromJson(Map<String, dynamic> json) =>
      _$DataPostFromJson(json);
}

@freezed
class CategoryPost with _$CategoryPost {
  const factory CategoryPost({
    String? id,
    String? name,
  }) = _CategoryPost;

  factory CategoryPost.fromJson(Map<String, dynamic> json) =>
      _$CategoryPostFromJson(json);
}
