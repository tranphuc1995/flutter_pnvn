import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_back_response.freezed.dart';
part 'feed_back_response.g.dart';

@freezed
class FeedBackResponse with _$FeedBackResponse {
  const factory FeedBackResponse({MetaData? metaData}) = _FeedBackResponse;

  factory FeedBackResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedBackResponseFromJson(json);
}

@freezed
class MetaData with _$MetaData {
  const factory MetaData({String? message, String? status}) = _MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
}
