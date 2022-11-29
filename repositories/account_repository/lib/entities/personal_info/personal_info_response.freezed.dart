// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'personal_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalInfoResponse _$PersonalInfoResponseFromJson(Map<String, dynamic> json) {
  return _PersonalInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$PersonalInfoResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  int? get userStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalInfoResponseCopyWith<PersonalInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoResponseCopyWith<$Res> {
  factory $PersonalInfoResponseCopyWith(PersonalInfoResponse value,
          $Res Function(PersonalInfoResponse) then) =
      _$PersonalInfoResponseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? userName,
      String? fullName,
      String? avatar,
      String? nickname,
      int? userStatus});
}

/// @nodoc
class _$PersonalInfoResponseCopyWithImpl<$Res>
    implements $PersonalInfoResponseCopyWith<$Res> {
  _$PersonalInfoResponseCopyWithImpl(this._value, this._then);

  final PersonalInfoResponse _value;
  // ignore: unused_field
  final $Res Function(PersonalInfoResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? nickname = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonalInfoResponseCopyWith<$Res>
    implements $PersonalInfoResponseCopyWith<$Res> {
  factory _$$_PersonalInfoResponseCopyWith(_$_PersonalInfoResponse value,
          $Res Function(_$_PersonalInfoResponse) then) =
      __$$_PersonalInfoResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? userName,
      String? fullName,
      String? avatar,
      String? nickname,
      int? userStatus});
}

/// @nodoc
class __$$_PersonalInfoResponseCopyWithImpl<$Res>
    extends _$PersonalInfoResponseCopyWithImpl<$Res>
    implements _$$_PersonalInfoResponseCopyWith<$Res> {
  __$$_PersonalInfoResponseCopyWithImpl(_$_PersonalInfoResponse _value,
      $Res Function(_$_PersonalInfoResponse) _then)
      : super(_value, (v) => _then(v as _$_PersonalInfoResponse));

  @override
  _$_PersonalInfoResponse get _value => super._value as _$_PersonalInfoResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? nickname = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_$_PersonalInfoResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalInfoResponse implements _PersonalInfoResponse {
  const _$_PersonalInfoResponse(
      {this.id,
      this.userName,
      this.fullName,
      this.avatar,
      this.nickname,
      this.userStatus});

  factory _$_PersonalInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalInfoResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? userName;
  @override
  final String? fullName;
  @override
  final String? avatar;
  @override
  final String? nickname;
  @override
  final int? userStatus;

  @override
  String toString() {
    return 'PersonalInfoResponse(id: $id, userName: $userName, fullName: $fullName, avatar: $avatar, nickname: $nickname, userStatus: $userStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalInfoResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality()
                .equals(other.userStatus, userStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(userStatus));

  @JsonKey(ignore: true)
  @override
  _$$_PersonalInfoResponseCopyWith<_$_PersonalInfoResponse> get copyWith =>
      __$$_PersonalInfoResponseCopyWithImpl<_$_PersonalInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalInfoResponseToJson(this);
  }
}

abstract class _PersonalInfoResponse implements PersonalInfoResponse {
  const factory _PersonalInfoResponse(
      {final String? id,
      final String? userName,
      final String? fullName,
      final String? avatar,
      final String? nickname,
      final int? userStatus}) = _$_PersonalInfoResponse;

  factory _PersonalInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_PersonalInfoResponse.fromJson;

  @override
  String? get id;
  @override
  String? get userName;
  @override
  String? get fullName;
  @override
  String? get avatar;
  @override
  String? get nickname;
  @override
  int? get userStatus;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalInfoResponseCopyWith<_$_PersonalInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
