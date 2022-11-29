import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_comment_response.freezed.dart';
part 'load_comment_response.g.dart';

@freezed
class LoadCommentResponse with _$LoadCommentResponse {
  const factory LoadCommentResponse({List<DataLoadComment>? data}) =
      _LoadCommentResponse;

  factory LoadCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$LoadCommentResponseFromJson(json);
}

@freezed
class DataLoadComment with _$DataLoadComment {
  const factory DataLoadComment(
      {String? id,
      String? nickName,
      String? avatar,
      String? createdDate,
      String? comment}) = _DataLoadComment;

  factory DataLoadComment.fromJson(Map<String, dynamic> json) =>
      _$DataLoadCommentFromJson(json);
}
