import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_nickname_response.freezed.dart';
part 'update_nickname_response.g.dart';

@freezed
class UpdateNicknameResponse with _$UpdateNicknameResponse {
  const factory UpdateNicknameResponse({MetaDataNickname? metaData}) =
      _UpdateNicknameResponse;

  factory UpdateNicknameResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateNicknameResponseFromJson(json);
}

@freezed
class MetaDataNickname with _$MetaDataNickname {
  const factory MetaDataNickname(
      {String? status, List<ErrorNickname>? errors}) = _MetaDataNickname;

  factory MetaDataNickname.fromJson(Map<String, dynamic> json) =>
      _$MetaDataNicknameFromJson(json);
}

@freezed
class ErrorNickname with _$ErrorNickname {
  const factory ErrorNickname({String? message}) = _ErrorNickname;

  factory ErrorNickname.fromJson(Map<String, dynamic> json) =>
      _$ErrorNicknameFromJson(json);
}
