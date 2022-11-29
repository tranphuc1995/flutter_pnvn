// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_user_exists_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckUserExistsResponse _$CheckUserExistsResponseFromJson(
    Map<String, dynamic> json) {
  return _CheckUserExistsResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckUserExistsResponse {
  bool? get userExists => throw _privateConstructorUsedError;
  bool? get userIsLocked => throw _privateConstructorUsedError;
  bool? get userIsLockedOut => throw _privateConstructorUsedError;
  int? get otpRequestInDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckUserExistsResponseCopyWith<CheckUserExistsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckUserExistsResponseCopyWith<$Res> {
  factory $CheckUserExistsResponseCopyWith(CheckUserExistsResponse value,
          $Res Function(CheckUserExistsResponse) then) =
      _$CheckUserExistsResponseCopyWithImpl<$Res>;
  $Res call(
      {bool? userExists,
      bool? userIsLocked,
      bool? userIsLockedOut,
      int? otpRequestInDay});
}

/// @nodoc
class _$CheckUserExistsResponseCopyWithImpl<$Res>
    implements $CheckUserExistsResponseCopyWith<$Res> {
  _$CheckUserExistsResponseCopyWithImpl(this._value, this._then);

  final CheckUserExistsResponse _value;
  // ignore: unused_field
  final $Res Function(CheckUserExistsResponse) _then;

  @override
  $Res call({
    Object? userExists = freezed,
    Object? userIsLocked = freezed,
    Object? userIsLockedOut = freezed,
    Object? otpRequestInDay = freezed,
  }) {
    return _then(_value.copyWith(
      userExists: userExists == freezed
          ? _value.userExists
          : userExists // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIsLocked: userIsLocked == freezed
          ? _value.userIsLocked
          : userIsLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIsLockedOut: userIsLockedOut == freezed
          ? _value.userIsLockedOut
          : userIsLockedOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      otpRequestInDay: otpRequestInDay == freezed
          ? _value.otpRequestInDay
          : otpRequestInDay // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_CheckUserExistsResponseCopyWith<$Res>
    implements $CheckUserExistsResponseCopyWith<$Res> {
  factory _$$_CheckUserExistsResponseCopyWith(_$_CheckUserExistsResponse value,
          $Res Function(_$_CheckUserExistsResponse) then) =
      __$$_CheckUserExistsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? userExists,
      bool? userIsLocked,
      bool? userIsLockedOut,
      int? otpRequestInDay});
}

/// @nodoc
class __$$_CheckUserExistsResponseCopyWithImpl<$Res>
    extends _$CheckUserExistsResponseCopyWithImpl<$Res>
    implements _$$_CheckUserExistsResponseCopyWith<$Res> {
  __$$_CheckUserExistsResponseCopyWithImpl(_$_CheckUserExistsResponse _value,
      $Res Function(_$_CheckUserExistsResponse) _then)
      : super(_value, (v) => _then(v as _$_CheckUserExistsResponse));

  @override
  _$_CheckUserExistsResponse get _value =>
      super._value as _$_CheckUserExistsResponse;

  @override
  $Res call({
    Object? userExists = freezed,
    Object? userIsLocked = freezed,
    Object? userIsLockedOut = freezed,
    Object? otpRequestInDay = freezed,
  }) {
    return _then(_$_CheckUserExistsResponse(
      userExists: userExists == freezed
          ? _value.userExists
          : userExists // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIsLocked: userIsLocked == freezed
          ? _value.userIsLocked
          : userIsLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIsLockedOut: userIsLockedOut == freezed
          ? _value.userIsLockedOut
          : userIsLockedOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      otpRequestInDay: otpRequestInDay == freezed
          ? _value.otpRequestInDay
          : otpRequestInDay // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckUserExistsResponse implements _CheckUserExistsResponse {
  const _$_CheckUserExistsResponse(
      {this.userExists,
      this.userIsLocked,
      this.userIsLockedOut,
      this.otpRequestInDay});

  factory _$_CheckUserExistsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CheckUserExistsResponseFromJson(json);

  @override
  final bool? userExists;
  @override
  final bool? userIsLocked;
  @override
  final bool? userIsLockedOut;
  @override
  final int? otpRequestInDay;

  @override
  String toString() {
    return 'CheckUserExistsResponse(userExists: $userExists, userIsLocked: $userIsLocked, userIsLockedOut: $userIsLockedOut, otpRequestInDay: $otpRequestInDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckUserExistsResponse &&
            const DeepCollectionEquality()
                .equals(other.userExists, userExists) &&
            const DeepCollectionEquality()
                .equals(other.userIsLocked, userIsLocked) &&
            const DeepCollectionEquality()
                .equals(other.userIsLockedOut, userIsLockedOut) &&
            const DeepCollectionEquality()
                .equals(other.otpRequestInDay, otpRequestInDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userExists),
      const DeepCollectionEquality().hash(userIsLocked),
      const DeepCollectionEquality().hash(userIsLockedOut),
      const DeepCollectionEquality().hash(otpRequestInDay));

  @JsonKey(ignore: true)
  @override
  _$$_CheckUserExistsResponseCopyWith<_$_CheckUserExistsResponse>
      get copyWith =>
          __$$_CheckUserExistsResponseCopyWithImpl<_$_CheckUserExistsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckUserExistsResponseToJson(this);
  }
}

abstract class _CheckUserExistsResponse implements CheckUserExistsResponse {
  const factory _CheckUserExistsResponse(
      {final bool? userExists,
      final bool? userIsLocked,
      final bool? userIsLockedOut,
      final int? otpRequestInDay}) = _$_CheckUserExistsResponse;

  factory _CheckUserExistsResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckUserExistsResponse.fromJson;

  @override
  bool? get userExists;
  @override
  bool? get userIsLocked;
  @override
  bool? get userIsLockedOut;
  @override
  int? get otpRequestInDay;
  @override
  @JsonKey(ignore: true)
  _$$_CheckUserExistsResponseCopyWith<_$_CheckUserExistsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
