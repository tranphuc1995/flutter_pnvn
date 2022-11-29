// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_url_video_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetUrlVideoResponse _$GetUrlVideoResponseFromJson(Map<String, dynamic> json) {
  return _GetUrlVideoResponse.fromJson(json);
}

/// @nodoc
mixin _$GetUrlVideoResponse {
  String? get playAddr => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUrlVideoResponseCopyWith<GetUrlVideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUrlVideoResponseCopyWith<$Res> {
  factory $GetUrlVideoResponseCopyWith(
          GetUrlVideoResponse value, $Res Function(GetUrlVideoResponse) then) =
      _$GetUrlVideoResponseCopyWithImpl<$Res>;
  $Res call({String? playAddr, int? statusCode});
}

/// @nodoc
class _$GetUrlVideoResponseCopyWithImpl<$Res>
    implements $GetUrlVideoResponseCopyWith<$Res> {
  _$GetUrlVideoResponseCopyWithImpl(this._value, this._then);

  final GetUrlVideoResponse _value;
  // ignore: unused_field
  final $Res Function(GetUrlVideoResponse) _then;

  @override
  $Res call({
    Object? playAddr = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      playAddr: playAddr == freezed
          ? _value.playAddr
          : playAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GetUrlVideoResponseCopyWith<$Res>
    implements $GetUrlVideoResponseCopyWith<$Res> {
  factory _$$_GetUrlVideoResponseCopyWith(_$_GetUrlVideoResponse value,
          $Res Function(_$_GetUrlVideoResponse) then) =
      __$$_GetUrlVideoResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? playAddr, int? statusCode});
}

/// @nodoc
class __$$_GetUrlVideoResponseCopyWithImpl<$Res>
    extends _$GetUrlVideoResponseCopyWithImpl<$Res>
    implements _$$_GetUrlVideoResponseCopyWith<$Res> {
  __$$_GetUrlVideoResponseCopyWithImpl(_$_GetUrlVideoResponse _value,
      $Res Function(_$_GetUrlVideoResponse) _then)
      : super(_value, (v) => _then(v as _$_GetUrlVideoResponse));

  @override
  _$_GetUrlVideoResponse get _value => super._value as _$_GetUrlVideoResponse;

  @override
  $Res call({
    Object? playAddr = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$_GetUrlVideoResponse(
      playAddr: playAddr == freezed
          ? _value.playAddr
          : playAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetUrlVideoResponse implements _GetUrlVideoResponse {
  const _$_GetUrlVideoResponse({this.playAddr, this.statusCode});

  factory _$_GetUrlVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetUrlVideoResponseFromJson(json);

  @override
  final String? playAddr;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'GetUrlVideoResponse(playAddr: $playAddr, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUrlVideoResponse &&
            const DeepCollectionEquality().equals(other.playAddr, playAddr) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(playAddr),
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  _$$_GetUrlVideoResponseCopyWith<_$_GetUrlVideoResponse> get copyWith =>
      __$$_GetUrlVideoResponseCopyWithImpl<_$_GetUrlVideoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetUrlVideoResponseToJson(
      this,
    );
  }
}

abstract class _GetUrlVideoResponse implements GetUrlVideoResponse {
  const factory _GetUrlVideoResponse(
      {final String? playAddr, final int? statusCode}) = _$_GetUrlVideoResponse;

  factory _GetUrlVideoResponse.fromJson(Map<String, dynamic> json) =
      _$_GetUrlVideoResponse.fromJson;

  @override
  String? get playAddr;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_GetUrlVideoResponseCopyWith<_$_GetUrlVideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
