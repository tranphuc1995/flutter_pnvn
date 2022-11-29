import 'package:freezed_annotation/freezed_annotation.dart';

part 'capture_face_response.freezed.dart';
part 'capture_face_response.g.dart';

@freezed
class CaptureFaceResponse with _$CaptureFaceResponse {
  const factory CaptureFaceResponse(
      {ResultCaptureFace? result, String? statusCode}) = _CaptureFaceResponse;

  factory CaptureFaceResponse.fromJson(Map<String, dynamic> json) =>
      _$CaptureFaceResponseFromJson(json);
}

@freezed
class ResultCaptureFace with _$ResultCaptureFace {
  const factory ResultCaptureFace({Summary? summary}) = _ResultCaptureFace;

  factory ResultCaptureFace.fromJson(Map<String, dynamic> json) =>
      _$ResultCaptureFaceFromJson(json);
}

@freezed
class Summary with _$Summary {
  const factory Summary({String? action}) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}
