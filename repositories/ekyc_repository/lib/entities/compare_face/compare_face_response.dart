import 'package:freezed_annotation/freezed_annotation.dart';

part 'compare_face_response.freezed.dart';
part 'compare_face_response.g.dart';

@freezed
class CompareFaceResponse with _$CompareFaceResponse {
  const factory CompareFaceResponse(
      {ResultCompareFace? result, String? statusCode}) = _CompareFaceResponse;

  factory CompareFaceResponse.fromJson(Map<String, dynamic> json) =>
      _$CompareFaceResponseFromJson(json);
}

@freezed
class ResultCompareFace with _$ResultCompareFace {
  const factory ResultCompareFace({int? match_score}) = _ResultCompareFace;

  factory ResultCompareFace.fromJson(Map<String, dynamic> json) =>
      _$ResultCompareFaceFromJson(json);
}
