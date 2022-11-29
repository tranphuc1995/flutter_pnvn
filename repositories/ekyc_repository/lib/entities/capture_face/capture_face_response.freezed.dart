// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'capture_face_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CaptureFaceResponse _$CaptureFaceResponseFromJson(Map<String, dynamic> json) {
  return _CaptureFaceResponse.fromJson(json);
}

/// @nodoc
mixin _$CaptureFaceResponse {
  ResultCaptureFace? get result => throw _privateConstructorUsedError;
  String? get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaptureFaceResponseCopyWith<CaptureFaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaptureFaceResponseCopyWith<$Res> {
  factory $CaptureFaceResponseCopyWith(
          CaptureFaceResponse value, $Res Function(CaptureFaceResponse) then) =
      _$CaptureFaceResponseCopyWithImpl<$Res>;
  $Res call({ResultCaptureFace? result, String? statusCode});

  $ResultCaptureFaceCopyWith<$Res>? get result;
}

/// @nodoc
class _$CaptureFaceResponseCopyWithImpl<$Res>
    implements $CaptureFaceResponseCopyWith<$Res> {
  _$CaptureFaceResponseCopyWithImpl(this._value, this._then);

  final CaptureFaceResponse _value;
  // ignore: unused_field
  final $Res Function(CaptureFaceResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultCaptureFace?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ResultCaptureFaceCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCaptureFaceCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_CaptureFaceResponseCopyWith<$Res>
    implements $CaptureFaceResponseCopyWith<$Res> {
  factory _$$_CaptureFaceResponseCopyWith(_$_CaptureFaceResponse value,
          $Res Function(_$_CaptureFaceResponse) then) =
      __$$_CaptureFaceResponseCopyWithImpl<$Res>;
  @override
  $Res call({ResultCaptureFace? result, String? statusCode});

  @override
  $ResultCaptureFaceCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_CaptureFaceResponseCopyWithImpl<$Res>
    extends _$CaptureFaceResponseCopyWithImpl<$Res>
    implements _$$_CaptureFaceResponseCopyWith<$Res> {
  __$$_CaptureFaceResponseCopyWithImpl(_$_CaptureFaceResponse _value,
      $Res Function(_$_CaptureFaceResponse) _then)
      : super(_value, (v) => _then(v as _$_CaptureFaceResponse));

  @override
  _$_CaptureFaceResponse get _value => super._value as _$_CaptureFaceResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$_CaptureFaceResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultCaptureFace?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CaptureFaceResponse implements _CaptureFaceResponse {
  const _$_CaptureFaceResponse({this.result, this.statusCode});

  factory _$_CaptureFaceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CaptureFaceResponseFromJson(json);

  @override
  final ResultCaptureFace? result;
  @override
  final String? statusCode;

  @override
  String toString() {
    return 'CaptureFaceResponse(result: $result, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaptureFaceResponse &&
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
  _$$_CaptureFaceResponseCopyWith<_$_CaptureFaceResponse> get copyWith =>
      __$$_CaptureFaceResponseCopyWithImpl<_$_CaptureFaceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CaptureFaceResponseToJson(this);
  }
}

abstract class _CaptureFaceResponse implements CaptureFaceResponse {
  const factory _CaptureFaceResponse(
      {final ResultCaptureFace? result,
      final String? statusCode}) = _$_CaptureFaceResponse;

  factory _CaptureFaceResponse.fromJson(Map<String, dynamic> json) =
      _$_CaptureFaceResponse.fromJson;

  @override
  ResultCaptureFace? get result;
  @override
  String? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_CaptureFaceResponseCopyWith<_$_CaptureFaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultCaptureFace _$ResultCaptureFaceFromJson(Map<String, dynamic> json) {
  return _ResultCaptureFace.fromJson(json);
}

/// @nodoc
mixin _$ResultCaptureFace {
  Summary? get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCaptureFaceCopyWith<ResultCaptureFace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCaptureFaceCopyWith<$Res> {
  factory $ResultCaptureFaceCopyWith(
          ResultCaptureFace value, $Res Function(ResultCaptureFace) then) =
      _$ResultCaptureFaceCopyWithImpl<$Res>;
  $Res call({Summary? summary});

  $SummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class _$ResultCaptureFaceCopyWithImpl<$Res>
    implements $ResultCaptureFaceCopyWith<$Res> {
  _$ResultCaptureFaceCopyWithImpl(this._value, this._then);

  final ResultCaptureFace _value;
  // ignore: unused_field
  final $Res Function(ResultCaptureFace) _then;

  @override
  $Res call({
    Object? summary = freezed,
  }) {
    return _then(_value.copyWith(
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary?,
    ));
  }

  @override
  $SummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $SummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value));
    });
  }
}

/// @nodoc
abstract class _$$_ResultCaptureFaceCopyWith<$Res>
    implements $ResultCaptureFaceCopyWith<$Res> {
  factory _$$_ResultCaptureFaceCopyWith(_$_ResultCaptureFace value,
          $Res Function(_$_ResultCaptureFace) then) =
      __$$_ResultCaptureFaceCopyWithImpl<$Res>;
  @override
  $Res call({Summary? summary});

  @override
  $SummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class __$$_ResultCaptureFaceCopyWithImpl<$Res>
    extends _$ResultCaptureFaceCopyWithImpl<$Res>
    implements _$$_ResultCaptureFaceCopyWith<$Res> {
  __$$_ResultCaptureFaceCopyWithImpl(
      _$_ResultCaptureFace _value, $Res Function(_$_ResultCaptureFace) _then)
      : super(_value, (v) => _then(v as _$_ResultCaptureFace));

  @override
  _$_ResultCaptureFace get _value => super._value as _$_ResultCaptureFace;

  @override
  $Res call({
    Object? summary = freezed,
  }) {
    return _then(_$_ResultCaptureFace(
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultCaptureFace implements _ResultCaptureFace {
  const _$_ResultCaptureFace({this.summary});

  factory _$_ResultCaptureFace.fromJson(Map<String, dynamic> json) =>
      _$$_ResultCaptureFaceFromJson(json);

  @override
  final Summary? summary;

  @override
  String toString() {
    return 'ResultCaptureFace(summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultCaptureFace &&
            const DeepCollectionEquality().equals(other.summary, summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(summary));

  @JsonKey(ignore: true)
  @override
  _$$_ResultCaptureFaceCopyWith<_$_ResultCaptureFace> get copyWith =>
      __$$_ResultCaptureFaceCopyWithImpl<_$_ResultCaptureFace>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultCaptureFaceToJson(this);
  }
}

abstract class _ResultCaptureFace implements ResultCaptureFace {
  const factory _ResultCaptureFace({final Summary? summary}) =
      _$_ResultCaptureFace;

  factory _ResultCaptureFace.fromJson(Map<String, dynamic> json) =
      _$_ResultCaptureFace.fromJson;

  @override
  Summary? get summary;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCaptureFaceCopyWith<_$_ResultCaptureFace> get copyWith =>
      throw _privateConstructorUsedError;
}

Summary _$SummaryFromJson(Map<String, dynamic> json) {
  return _Summary.fromJson(json);
}

/// @nodoc
mixin _$Summary {
  String? get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummaryCopyWith<Summary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryCopyWith<$Res> {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) then) =
      _$SummaryCopyWithImpl<$Res>;
  $Res call({String? action});
}

/// @nodoc
class _$SummaryCopyWithImpl<$Res> implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._value, this._then);

  final Summary _value;
  // ignore: unused_field
  final $Res Function(Summary) _then;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SummaryCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$$_SummaryCopyWith(
          _$_Summary value, $Res Function(_$_Summary) then) =
      __$$_SummaryCopyWithImpl<$Res>;
  @override
  $Res call({String? action});
}

/// @nodoc
class __$$_SummaryCopyWithImpl<$Res> extends _$SummaryCopyWithImpl<$Res>
    implements _$$_SummaryCopyWith<$Res> {
  __$$_SummaryCopyWithImpl(_$_Summary _value, $Res Function(_$_Summary) _then)
      : super(_value, (v) => _then(v as _$_Summary));

  @override
  _$_Summary get _value => super._value as _$_Summary;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_$_Summary(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Summary implements _Summary {
  const _$_Summary({this.action});

  factory _$_Summary.fromJson(Map<String, dynamic> json) =>
      _$$_SummaryFromJson(json);

  @override
  final String? action;

  @override
  String toString() {
    return 'Summary(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Summary &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(action));

  @JsonKey(ignore: true)
  @override
  _$$_SummaryCopyWith<_$_Summary> get copyWith =>
      __$$_SummaryCopyWithImpl<_$_Summary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SummaryToJson(this);
  }
}

abstract class _Summary implements Summary {
  const factory _Summary({final String? action}) = _$_Summary;

  factory _Summary.fromJson(Map<String, dynamic> json) = _$_Summary.fromJson;

  @override
  String? get action;
  @override
  @JsonKey(ignore: true)
  _$$_SummaryCopyWith<_$_Summary> get copyWith =>
      throw _privateConstructorUsedError;
}
