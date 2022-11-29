import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_code_response.freezed.dart';
part 'status_code_response.g.dart';

@freezed
class StatusCodeResponse with _$StatusCodeResponse {
  const factory StatusCodeResponse({int? statusCode}) = _StatusCodeResponse;

  factory StatusCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusCodeResponseFromJson(json);
}
