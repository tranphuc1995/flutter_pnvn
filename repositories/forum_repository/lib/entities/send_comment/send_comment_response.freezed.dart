// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendCommentResponse _$SendCommentResponseFromJson(Map<String, dynamic> json) {
  return _SendCommentResponse.fromJson(json);
}

/// @nodoc
mixin _$SendCommentResponse {
  DataSendComment? get metaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendCommentResponseCopyWith<SendCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCommentResponseCopyWith<$Res> {
  factory $SendCommentResponseCopyWith(
          SendCommentResponse value, $Res Function(SendCommentResponse) then) =
      _$SendCommentResponseCopyWithImpl<$Res>;
  $Res call({DataSendComment? metaData});

  $DataSendCommentCopyWith<$Res>? get metaData;
}

/// @nodoc
class _$SendCommentResponseCopyWithImpl<$Res>
    implements $SendCommentResponseCopyWith<$Res> {
  _$SendCommentResponseCopyWithImpl(this._value, this._then);

  final SendCommentResponse _value;
  // ignore: unused_field
  final $Res Function(SendCommentResponse) _then;

  @override
  $Res call({
    Object? metaData = freezed,
  }) {
    return _then(_value.copyWith(
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as DataSendComment?,
    ));
  }

  @override
  $DataSendCommentCopyWith<$Res>? get metaData {
    if (_value.metaData == null) {
      return null;
    }

    return $DataSendCommentCopyWith<$Res>(_value.metaData!, (value) {
      return _then(_value.copyWith(metaData: value));
    });
  }
}

/// @nodoc
abstract class _$$_SendCommentResponseCopyWith<$Res>
    implements $SendCommentResponseCopyWith<$Res> {
  factory _$$_SendCommentResponseCopyWith(_$_SendCommentResponse value,
          $Res Function(_$_SendCommentResponse) then) =
      __$$_SendCommentResponseCopyWithImpl<$Res>;
  @override
  $Res call({DataSendComment? metaData});

  @override
  $DataSendCommentCopyWith<$Res>? get metaData;
}

/// @nodoc
class __$$_SendCommentResponseCopyWithImpl<$Res>
    extends _$SendCommentResponseCopyWithImpl<$Res>
    implements _$$_SendCommentResponseCopyWith<$Res> {
  __$$_SendCommentResponseCopyWithImpl(_$_SendCommentResponse _value,
      $Res Function(_$_SendCommentResponse) _then)
      : super(_value, (v) => _then(v as _$_SendCommentResponse));

  @override
  _$_SendCommentResponse get _value => super._value as _$_SendCommentResponse;

  @override
  $Res call({
    Object? metaData = freezed,
  }) {
    return _then(_$_SendCommentResponse(
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as DataSendComment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendCommentResponse implements _SendCommentResponse {
  const _$_SendCommentResponse({this.metaData});

  factory _$_SendCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SendCommentResponseFromJson(json);

  @override
  final DataSendComment? metaData;

  @override
  String toString() {
    return 'SendCommentResponse(metaData: $metaData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendCommentResponse &&
            const DeepCollectionEquality().equals(other.metaData, metaData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(metaData));

  @JsonKey(ignore: true)
  @override
  _$$_SendCommentResponseCopyWith<_$_SendCommentResponse> get copyWith =>
      __$$_SendCommentResponseCopyWithImpl<_$_SendCommentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendCommentResponseToJson(
      this,
    );
  }
}

abstract class _SendCommentResponse implements SendCommentResponse {
  const factory _SendCommentResponse({final DataSendComment? metaData}) =
      _$_SendCommentResponse;

  factory _SendCommentResponse.fromJson(Map<String, dynamic> json) =
      _$_SendCommentResponse.fromJson;

  @override
  DataSendComment? get metaData;
  @override
  @JsonKey(ignore: true)
  _$$_SendCommentResponseCopyWith<_$_SendCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSendComment _$DataSendCommentFromJson(Map<String, dynamic> json) {
  return _DataSendComment.fromJson(json);
}

/// @nodoc
mixin _$DataSendComment {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSendCommentCopyWith<DataSendComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSendCommentCopyWith<$Res> {
  factory $DataSendCommentCopyWith(
          DataSendComment value, $Res Function(DataSendComment) then) =
      _$DataSendCommentCopyWithImpl<$Res>;
  $Res call({String? status, String? message});
}

/// @nodoc
class _$DataSendCommentCopyWithImpl<$Res>
    implements $DataSendCommentCopyWith<$Res> {
  _$DataSendCommentCopyWithImpl(this._value, this._then);

  final DataSendComment _value;
  // ignore: unused_field
  final $Res Function(DataSendComment) _then;

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
abstract class _$$_DataSendCommentCopyWith<$Res>
    implements $DataSendCommentCopyWith<$Res> {
  factory _$$_DataSendCommentCopyWith(
          _$_DataSendComment value, $Res Function(_$_DataSendComment) then) =
      __$$_DataSendCommentCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message});
}

/// @nodoc
class __$$_DataSendCommentCopyWithImpl<$Res>
    extends _$DataSendCommentCopyWithImpl<$Res>
    implements _$$_DataSendCommentCopyWith<$Res> {
  __$$_DataSendCommentCopyWithImpl(
      _$_DataSendComment _value, $Res Function(_$_DataSendComment) _then)
      : super(_value, (v) => _then(v as _$_DataSendComment));

  @override
  _$_DataSendComment get _value => super._value as _$_DataSendComment;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_DataSendComment(
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
class _$_DataSendComment implements _DataSendComment {
  const _$_DataSendComment({this.status, this.message});

  factory _$_DataSendComment.fromJson(Map<String, dynamic> json) =>
      _$$_DataSendCommentFromJson(json);

  @override
  final String? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'DataSendComment(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSendComment &&
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
  _$$_DataSendCommentCopyWith<_$_DataSendComment> get copyWith =>
      __$$_DataSendCommentCopyWithImpl<_$_DataSendComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSendCommentToJson(
      this,
    );
  }
}

abstract class _DataSendComment implements DataSendComment {
  const factory _DataSendComment(
      {final String? status, final String? message}) = _$_DataSendComment;

  factory _DataSendComment.fromJson(Map<String, dynamic> json) =
      _$_DataSendComment.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_DataSendCommentCopyWith<_$_DataSendComment> get copyWith =>
      throw _privateConstructorUsedError;
}
