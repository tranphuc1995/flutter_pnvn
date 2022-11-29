import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_user_exists_response.freezed.dart';
part 'check_user_exists_response.g.dart';

@freezed
class CheckUserExistsResponse with _$CheckUserExistsResponse {
  const factory CheckUserExistsResponse(
      {bool? userExists,
      bool? userIsLocked,
      bool? userIsLockedOut,
      int? otpRequestInDay}) = _CheckUserExistsResponse;

  factory CheckUserExistsResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckUserExistsResponseFromJson(json);
}
