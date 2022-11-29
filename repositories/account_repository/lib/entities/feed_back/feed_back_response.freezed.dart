// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_back_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedBackResponse _$FeedBackResponseFromJson(Map<String, dynamic> json) {
  return _FeedBackResponse.fromJson(json);
}

/// @nodoc
mixin _$FeedBackResponse {
  MetaData? get metaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedBackResponseCopyWith<FeedBackResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedBackResponseCopyWith<$Res> {
  factory $FeedBackResponseCopyWith(
          FeedBackResponse value, $Res Function(FeedBackResponse) then) =
      _$FeedBackResponseCopyWithImpl<$Res>;
  $Res call({MetaData? metaData});

  $MetaDataCopyWith<$Res>? get metaData;
}

/// @nodoc
class _$FeedBackResponseCopyWithImpl<$Res>
    implements $FeedBackResponseCopyWith<$Res> {
  _$FeedBackResponseCopyWithImpl(this._value, this._then);

  final FeedBackResponse _value;
  // ignore: unused_field
  final $Res Function(FeedBackResponse) _then;

  @override
  $Res call({
    Object? metaData = freezed,
  }) {
    return _then(_value.copyWith(
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData?,
    ));
  }

  @override
  $MetaDataCopyWith<$Res>? get metaData {
    if (_value.metaData == null) {
      return null;
    }

    return $MetaDataCopyWith<$Res>(_value.metaData!, (value) {
      return _then(_value.copyWith(metaData: value));
    });
  }
}

/// @nodoc
abstract class _$$_FeedBackResponseCopyWith<$Res>
    implements $FeedBackResponseCopyWith<$Res> {
  factory _$$_FeedBackResponseCopyWith(
          _$_FeedBackResponse value, $Res Function(_$_FeedBackResponse) then) =
      __$$_FeedBackResponseCopyWithImpl<$Res>;
  @override
  $Res call({MetaData? metaData});

  @override
  $MetaDataCopyWith<$Res>? get metaData;
}

/// @nodoc
class __$$_FeedBackResponseCopyWithImpl<$Res>
    extends _$FeedBackResponseCopyWithImpl<$Res>
    implements _$$_FeedBackResponseCopyWith<$Res> {
  __$$_FeedBackResponseCopyWithImpl(
      _$_FeedBackResponse _value, $Res Function(_$_FeedBackResponse) _then)
      : super(_value, (v) => _then(v as _$_FeedBackResponse));

  @override
  _$_FeedBackResponse get _value => super._value as _$_FeedBackResponse;

  @override
  $Res call({
    Object? metaData = freezed,
  }) {
    return _then(_$_FeedBackResponse(
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedBackResponse implements _FeedBackResponse {
  const _$_FeedBackResponse({this.metaData});

  factory _$_FeedBackResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedBackResponseFromJson(json);

  @override
  final MetaData? metaData;

  @override
  String toString() {
    return 'FeedBackResponse(metaData: $metaData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedBackResponse &&
            const DeepCollectionEquality().equals(other.metaData, metaData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(metaData));

  @JsonKey(ignore: true)
  @override
  _$$_FeedBackResponseCopyWith<_$_FeedBackResponse> get copyWith =>
      __$$_FeedBackResponseCopyWithImpl<_$_FeedBackResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedBackResponseToJson(this);
  }
}

abstract class _FeedBackResponse implements FeedBackResponse {
  const factory _FeedBackResponse({final MetaData? metaData}) =
      _$_FeedBackResponse;

  factory _FeedBackResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedBackResponse.fromJson;

  @override
  MetaData? get metaData;
  @override
  @JsonKey(ignore: true)
  _$$_FeedBackResponseCopyWith<_$_FeedBackResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaData _$MetaDataFromJson(Map<String, dynamic> json) {
  return _MetaData.fromJson(json);
}

/// @nodoc
mixin _$MetaData {
  String? get message => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataCopyWith<MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataCopyWith<$Res> {
  factory $MetaDataCopyWith(MetaData value, $Res Function(MetaData) then) =
      _$MetaDataCopyWithImpl<$Res>;
  $Res call({String? message, String? status});
}

/// @nodoc
class _$MetaDataCopyWithImpl<$Res> implements $MetaDataCopyWith<$Res> {
  _$MetaDataCopyWithImpl(this._value, this._then);

  final MetaData _value;
  // ignore: unused_field
  final $Res Function(MetaData) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MetaDataCopyWith<$Res> implements $MetaDataCopyWith<$Res> {
  factory _$$_MetaDataCopyWith(
          _$_MetaData value, $Res Function(_$_MetaData) then) =
      __$$_MetaDataCopyWithImpl<$Res>;
  @override
  $Res call({String? message, String? status});
}

/// @nodoc
class __$$_MetaDataCopyWithImpl<$Res> extends _$MetaDataCopyWithImpl<$Res>
    implements _$$_MetaDataCopyWith<$Res> {
  __$$_MetaDataCopyWithImpl(
      _$_MetaData _value, $Res Function(_$_MetaData) _then)
      : super(_value, (v) => _then(v as _$_MetaData));

  @override
  _$_MetaData get _value => super._value as _$_MetaData;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_MetaData(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaData implements _MetaData {
  const _$_MetaData({this.message, this.status});

  factory _$_MetaData.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataFromJson(json);

  @override
  final String? message;
  @override
  final String? status;

  @override
  String toString() {
    return 'MetaData(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaData &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_MetaDataCopyWith<_$_MetaData> get copyWith =>
      __$$_MetaDataCopyWithImpl<_$_MetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataToJson(this);
  }
}

abstract class _MetaData implements MetaData {
  const factory _MetaData({final String? message, final String? status}) =
      _$_MetaData;

  factory _MetaData.fromJson(Map<String, dynamic> json) = _$_MetaData.fromJson;

  @override
  String? get message;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataCopyWith<_$_MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}
