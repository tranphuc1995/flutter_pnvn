import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_comment_response.freezed.dart';
part 'send_comment_response.g.dart';

@freezed
class SendCommentResponse with _$SendCommentResponse {
  const factory SendCommentResponse({DataSendComment? metaData}) =
      _SendCommentResponse;

  factory SendCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$SendCommentResponseFromJson(json);
}

@freezed
class DataSendComment with _$DataSendComment {
  const factory DataSendComment({String? status, String? message}) =
      _DataSendComment;

  factory DataSendComment.fromJson(Map<String, dynamic> json) =>
      _$DataSendCommentFromJson(json);
}
