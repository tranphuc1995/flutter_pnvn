import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_url_video_response.freezed.dart';
part 'get_url_video_response.g.dart';

@freezed
class GetUrlVideoResponse with _$GetUrlVideoResponse {
  const factory GetUrlVideoResponse({String? playAddr, int? statusCode}) =
      _GetUrlVideoResponse;

  factory GetUrlVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUrlVideoResponseFromJson(json);
}
