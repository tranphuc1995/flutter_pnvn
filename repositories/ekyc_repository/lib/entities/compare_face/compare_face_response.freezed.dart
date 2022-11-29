// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'compare_face_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompareFaceResponse _$CompareFaceResponseFromJson(Map<String, dynamic> json) {
  return _CompareFaceResponse.fromJson(json);
}

/// @nodoc
mixin _$CompareFaceResponse {
  ResultCompareFace? get result => throw _privateConstructorUsedError;
  String? get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompareFaceResponseCopyWith<CompareFaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompareFaceResponseCopyWith<$Res> {
  factory $CompareFaceResponseCopyWith(
          CompareFaceResponse value, $Res Function(CompareFaceResponse) then) =
      _$CompareFaceResponseCopyWithImpl<$Res>;
  $Res call({ResultCompareFace? result, String? statusCode});

  $ResultCompareFaceCopyWith<$Res>? get result;
}

/// @nodoc
class _$CompareFaceResponseCopyWithImpl<$Res>
    implements $CompareFaceResponseCopyWith<$Res> {
  _$CompareFaceResponseCopyWithImpl(this._value, this._then);

  final CompareFaceResponse _value;
  // ignore: unused_field
  final $Res Function(CompareFaceResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultCompareFace?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ResultCompareFaceCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCompareFaceCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_CompareFaceResponseCopyWith<$Res>
    implements $CompareFaceResponseCopyWith<$Res> {
  factory _$$_CompareFaceResponseCopyWith(_$_CompareFaceResponse value,
          $Res Function(_$_CompareFaceResponse) then) =
      __$$_CompareFaceResponseCopyWithImpl<$Res>;
  @override
  $Res call({ResultCompareFace? result, String? statusCode});

  @override
  $ResultCompareFaceCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_CompareFaceResponseCopyWithImpl<$Res>
    extends _$CompareFaceResponseCopyWithImpl<$Res>
    implements _$$_CompareFaceResponseCopyWith<$Res> {
  __$$_CompareFaceResponseCopyWithImpl(_$_CompareFaceResponse _value,
      $Res Function(_$_CompareFaceResponse) _then)
      : super(_value, (v) => _then(v as _$_CompareFaceResponse));

  @override
  _$_CompareFaceResponse get _value => super._value as _$_CompareFaceResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$_CompareFaceResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultCompareFace?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompareFaceResponse implements _CompareFaceResponse {
  const _$_CompareFaceResponse({this.result, this.statusCode});

  factory _$_CompareFaceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CompareFaceResponseFromJson(json);

  @override
  final ResultCompareFace? result;
  @override
  final String? statusCode;

  @override
  String toString() {
    return 'CompareFaceResponse(result: $result, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompareFaceResponse &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  _$$_CompareFaceResponseCopyWith<_$_CompareFaceResponse> get copyWith =>
      __$$_CompareFaceResponseCopyWithImpl<_$_CompareFaceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompareFaceResponseToJson(this);
  }
}

abstract class _CompareFaceResponse implements CompareFaceResponse {
  const factory _CompareFaceResponse(
      {final ResultCompareFace? result,
      final String? statusCode}) = _$_CompareFaceResponse;

  factory _CompareFaceResponse.fromJson(Map<String, dynamic> json) =
      _$_CompareFaceResponse.fromJson;

  @override
  ResultCompareFace? get result;
  @override
  String? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_CompareFaceResponseCopyWith<_$_CompareFaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultCompareFace _$ResultCompareFaceFromJson(Map<String, dynamic> json) {
  return _ResultCompareFace.fromJson(json);
}

/// @nodoc
mixin _$ResultCompareFace {
  int? get match_score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCompareFaceCopyWith<ResultCompareFace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCompareFaceCopyWith<$Res> {
  factory $ResultCompareFaceCopyWith(
          ResultCompareFace value, $Res Function(ResultCompareFace) then) =
      _$ResultCompareFaceCopyWithImpl<$Res>;
  $Res call({int? match_score});
}

/// @nodoc
class _$ResultCompareFaceCopyWithImpl<$Res>
    implements $ResultCompareFaceCopyWith<$Res> {
  _$ResultCompareFaceCopyWithImpl(this._value, this._then);

  final ResultCompareFace _value;
  // ignore: unused_field
  final $Res Function(ResultCompareFace) _then;

  @override
  $Res call({
    Object? match_score = freezed,
  }) {
    return _then(_value.copyWith(
      match_score: match_score == freezed
          ? _value.match_score
          : match_score // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ResultCompareFaceCopyWith<$Res>
    implements $ResultCompareFaceCopyWith<$Res> {
  factory _$$_ResultCompareFaceCopyWith(_$_ResultCompareFace value,
          $Res Function(_$_ResultCompareFace) then) =
      __$$_ResultCompareFaceCopyWithImpl<$Res>;
  @override
  $Res call({int? match_score});
}

/// @nodoc
class __$$_ResultCompareFaceCopyWithImpl<$Res>
    extends _$ResultCompareFaceCopyWithImpl<$Res>
    implements _$$_ResultCompareFaceCopyWith<$Res> {
  __$$_ResultCompareFaceCopyWithImpl(
      _$_ResultCompareFace _value, $Res Function(_$_ResultCompareFace) _then)
      : super(_value, (v) => _then(v as _$_ResultCompareFace));

  @override
  _$_ResultCompareFace get _value => super._value as _$_ResultCompareFace;

  @override
  $Res call({
    Object? match_score = freezed,
  }) {
    return _then(_$_ResultCompareFace(
      match_score: match_score == freezed
          ? _value.match_score
          : match_score // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultCompareFace implements _ResultCompareFace {
  const _$_ResultCompareFace({this.match_score});

  factory _$_ResultCompareFace.fromJson(Map<String, dynamic> json) =>
      _$$_ResultCompareFaceFromJson(json);

  @override
  final int? match_score;

  @override
  String toString() {
    return 'ResultCompareFace(match_score: $match_score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultCompareFace &&
            const DeepCollectionEquality()
                .equals(other.match_score, match_score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(match_score));

  @JsonKey(ignore: true)
  @override
  _$$_ResultCompareFaceCopyWith<_$_ResultCompareFace> get copyWith =>
      __$$_ResultCompareFaceCopyWithImpl<_$_ResultCompareFace>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultCompareFaceToJson(this);
  }
}

abstract class _ResultCompareFace implements ResultCompareFace {
  const factory _ResultCompareFace({final int? match_score}) =
      _$_ResultCompareFace;

  factory _ResultCompareFace.fromJson(Map<String, dynamic> json) =
      _$_ResultCompareFace.fromJson;

  @override
  int? get match_score;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCompareFaceCopyWith<_$_ResultCompareFace> get copyWith =>
      throw _privateConstructorUsedError;
}
