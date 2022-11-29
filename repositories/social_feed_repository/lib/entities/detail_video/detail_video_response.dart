import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_video_response.freezed.dart';
part 'detail_video_response.g.dart';

@freezed
class DetailVideoResponse with _$DetailVideoResponse {
  const factory DetailVideoResponse({DataVideoDetail? data}) =
      _DetailVideoResponse;

  factory DetailVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailVideoResponseFromJson(json);
}

@freezed
class DataVideoDetail with _$DataVideoDetail {
  const factory DataVideoDetail(
      {int? likeCount, int? commentCount, bool? isLiked}) = _DataVideoDetail;

  factory DataVideoDetail.fromJson(Map<String, dynamic> json) =>
      _$DataVideoDetailFromJson(json);
}
