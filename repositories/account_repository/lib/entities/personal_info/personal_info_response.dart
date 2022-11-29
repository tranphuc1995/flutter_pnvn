import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_info_response.freezed.dart';
part 'personal_info_response.g.dart';

@freezed
class PersonalInfoResponse with _$PersonalInfoResponse {
  const factory PersonalInfoResponse(
      {String? id,
      String? userName,
      String? fullName,
      String? avatar,
      String? nickname,
      int? userStatus}) = _PersonalInfoResponse;

  factory PersonalInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoResponseFromJson(json);
}
