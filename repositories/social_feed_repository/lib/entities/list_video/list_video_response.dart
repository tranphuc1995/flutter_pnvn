import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_video_response.freezed.dart';
part 'list_video_response.g.dart';

@freezed
class ListVideoResponse with _$ListVideoResponse {
  const factory ListVideoResponse({List<Data>? data}) = _ListVideoResponse;

  factory ListVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$ListVideoResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data(
      {String? id,
      String? videoId,
      String? title,
      String? uploadedDate,
      String? imageUrl,
      String? authorName,
      String? videoUrl}) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
