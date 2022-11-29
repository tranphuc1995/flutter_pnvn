// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_ocr_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadOcrResponse _$UploadOcrResponseFromJson(Map<String, dynamic> json) {
  return _UploadOcrResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadOcrResponse {
  MetaDataOcr? get metaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadOcrResponseCopyWith<UploadOcrResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadOcrResponseCopyWith<$Res> {
  factory $UploadOcrResponseCopyWith(
          UploadOcrResponse value, $Res Function(UploadOcrResponse) then) =
      _$UploadOcrResponseCopyWithImpl<$Res>;
  $Res call({MetaDataOcr? metaData});

  $MetaDataOcrCopyWith<$Res>? get metaData;
}

/// @nodoc
class _$UploadOcrResponseCopyWithImpl<$Res>
    implements $UploadOcrResponseCopyWith<$Res> {
  _$UploadOcrResponseCopyWithImpl(this._value, this._then);

  final UploadOcrResponse _value;
  // ignore: unused_field
  final $Res Function(UploadOcrResponse) _then;

  @override
  $Res call({
    Object? metaData = freezed,
  }) {
    return _then(_value.copyWith(
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataOcr?,
    ));
  }

  @override
  $MetaDataOcrCopyWith<$Res>? get metaData {
    if (_value.metaData == null) {
      return null;
    }

    return $MetaDataOcrCopyWith<$Res>(_value.metaData!, (value) {
      return _then(_value.copyWith(metaData: value));
    });
  }
}

/// @nodoc
abstract class _$$_UploadOcrResponseCopyWith<$Res>
    implements $UploadOcrResponseCopyWith<$Res> {
  factory _$$_UploadOcrResponseCopyWith(_$_UploadOcrResponse value,
          $Res Function(_$_UploadOcrResponse) then) =
      __$$_UploadOcrResponseCopyWithImpl<$Res>;
  @override
  $Res call({MetaDataOcr? metaData});

  @override
  $MetaDataOcrCopyWith<$Res>? get metaData;
}

/// @nodoc
class __$$_UploadOcrResponseCopyWithImpl<$Res>
    extends _$UploadOcrResponseCopyWithImpl<$Res>
    implements _$$_UploadOcrResponseCopyWith<$Res> {
  __$$_UploadOcrResponseCopyWithImpl(
      _$_UploadOcrResponse _value, $Res Function(_$_UploadOcrResponse) _then)
      : super(_value, (v) => _then(v as _$_UploadOcrResponse));

  @override
  _$_UploadOcrResponse get _value => super._value as _$_UploadOcrResponse;

  @override
  $Res call({
    Object? metaData = freezed,
  }) {
    return _then(_$_UploadOcrResponse(
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataOcr?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadOcrResponse implements _UploadOcrResponse {
  const _$_UploadOcrResponse({this.metaData});

  factory _$_UploadOcrResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UploadOcrResponseFromJson(json);

  @override
  final MetaDataOcr? metaData;

  @override
  String toString() {
    return 'UploadOcrResponse(metaData: $metaData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadOcrResponse &&
            const DeepCollectionEquality().equals(other.metaData, metaData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(metaData));

  @JsonKey(ignore: true)
  @override
  _$$_UploadOcrResponseCopyWith<_$_UploadOcrResponse> get copyWith =>
      __$$_UploadOcrResponseCopyWithImpl<_$_UploadOcrResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadOcrResponseToJson(this);
  }
}

abstract class _UploadOcrResponse implements UploadOcrResponse {
  const factory _UploadOcrResponse({final MetaDataOcr? metaData}) =
      _$_UploadOcrResponse;

  factory _UploadOcrResponse.fromJson(Map<String, dynamic> json) =
      _$_UploadOcrResponse.fromJson;

  @override
  MetaDataOcr? get metaData;
  @override
  @JsonKey(ignore: true)
  _$$_UploadOcrResponseCopyWith<_$_UploadOcrResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaDataOcr _$MetaDataOcrFromJson(Map<String, dynamic> json) {
  return _MetaDataOcr.fromJson(json);
}

/// @nodoc
mixin _$MetaDataOcr {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataOcrCopyWith<MetaDataOcr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataOcrCopyWith<$Res> {
  factory $MetaDataOcrCopyWith(
          MetaDataOcr value, $Res Function(MetaDataOcr) then) =
      _$MetaDataOcrCopyWithImpl<$Res>;
  $Res call({String? status, String? message});
}

/// @nodoc
class _$MetaDataOcrCopyWithImpl<$Res> implements $MetaDataOcrCopyWith<$Res> {
  _$MetaDataOcrCopyWithImpl(this._value, this._then);

  final MetaDataOcr _value;
  // ignore: unused_field
  final $Res Function(MetaDataOcr) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MetaDataOcrCopyWith<$Res>
    implements $MetaDataOcrCopyWith<$Res> {
  factory _$$_MetaDataOcrCopyWith(
          _$_MetaDataOcr value, $Res Function(_$_MetaDataOcr) then) =
      __$$_MetaDataOcrCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message});
}

/// @nodoc
class __$$_MetaDataOcrCopyWithImpl<$Res> extends _$MetaDataOcrCopyWithImpl<$Res>
    implements _$$_MetaDataOcrCopyWith<$Res> {
  __$$_MetaDataOcrCopyWithImpl(
      _$_MetaDataOcr _value, $Res Function(_$_MetaDataOcr) _then)
      : super(_value, (v) => _then(v as _$_MetaDataOcr));

  @override
  _$_MetaDataOcr get _value => super._value as _$_MetaDataOcr;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_MetaDataOcr(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaDataOcr implements _MetaDataOcr {
  const _$_MetaDataOcr({this.status, this.message});

  factory _$_MetaDataOcr.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataOcrFromJson(json);

  @override
  final String? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'MetaDataOcr(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDataOcr &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_MetaDataOcrCopyWith<_$_MetaDataOcr> get copyWith =>
      __$$_MetaDataOcrCopyWithImpl<_$_MetaDataOcr>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataOcrToJson(this);
  }
}

abstract class _MetaDataOcr implements MetaDataOcr {
  const factory _MetaDataOcr({final String? status, final String? message}) =
      _$_MetaDataOcr;

  factory _MetaDataOcr.fromJson(Map<String, dynamic> json) =
      _$_MetaDataOcr.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataOcrCopyWith<_$_MetaDataOcr> get copyWith =>
      throw _privateConstructorUsedError;
}
