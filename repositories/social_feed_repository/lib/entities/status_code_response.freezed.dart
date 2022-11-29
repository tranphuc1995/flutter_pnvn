// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusCodeResponse _$StatusCodeResponseFromJson(Map<String, dynamic> json) {
  return _StatusCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$StatusCodeResponse {
  int? get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCodeResponseCopyWith<StatusCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCodeResponseCopyWith<$Res> {
  factory $StatusCodeResponseCopyWith(
          StatusCodeResponse value, $Res Function(StatusCodeResponse) then) =
      _$StatusCodeResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode});
}

/// @nodoc
class _$StatusCodeResponseCopyWithImpl<$Res>
    implements $StatusCodeResponseCopyWith<$Res> {
  _$StatusCodeResponseCopyWithImpl(this._value, this._then);

  final StatusCodeResponse _value;
  // ignore: unused_field
  final $Res Function(StatusCodeResponse) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_StatusCodeResponseCopyWith<$Res>
    implements $StatusCodeResponseCopyWith<$Res> {
  factory _$$_StatusCodeResponseCopyWith(_$_StatusCodeResponse value,
          $Res Function(_$_StatusCodeResponse) then) =
      __$$_StatusCodeResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode});
}

/// @nodoc
class __$$_StatusCodeResponseCopyWithImpl<$Res>
    extends _$StatusCodeResponseCopyWithImpl<$Res>
    implements _$$_StatusCodeResponseCopyWith<$Res> {
  __$$_StatusCodeResponseCopyWithImpl(
      _$_StatusCodeResponse _value, $Res Function(_$_StatusCodeResponse) _then)
      : super(_value, (v) => _then(v as _$_StatusCodeResponse));

  @override
  _$_StatusCodeResponse get _value => super._value as _$_StatusCodeResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
  }) {
    return _then(_$_StatusCodeResponse(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusCodeResponse implements _StatusCodeResponse {
  const _$_StatusCodeResponse({this.statusCode});

  factory _$_StatusCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StatusCodeResponseFromJson(json);

  @override
  final int? statusCode;

  @override
  String toString() {
    return 'StatusCodeResponse(statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusCodeResponse &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  _$$_StatusCodeResponseCopyWith<_$_StatusCodeResponse> get copyWith =>
      __$$_StatusCodeResponseCopyWithImpl<_$_StatusCodeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusCodeResponseToJson(
      this,
    );
  }
}

abstract class _StatusCodeResponse implements StatusCodeResponse {
  const factory _StatusCodeResponse({final int? statusCode}) =
      _$_StatusCodeResponse;

  factory _StatusCodeResponse.fromJson(Map<String, dynamic> json) =
      _$_StatusCodeResponse.fromJson;

  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCodeResponseCopyWith<_$_StatusCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
