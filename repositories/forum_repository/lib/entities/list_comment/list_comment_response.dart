import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_comment_response.freezed.dart';
part 'list_comment_response.g.dart';

@freezed
class ListCommentResponse with _$ListCommentResponse {
  const factory ListCommentResponse({List<DataListComment>? data}) =
      _ListCommentResponse;

  factory ListCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$ListCommentResponseFromJson(json);
}

@freezed
class DataListComment with _$DataListComment {
  const factory DataListComment(
      {String? id,
      String? comment,
      String? nickname,
      String? avatar,
      String? createdDate}) = _DataListComment;

  factory DataListComment.fromJson(Map<String, dynamic> json) =>
      _$DataListCommentFromJson(json);
}
