// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_nickname_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateNicknameResponse _$UpdateNicknameResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateNicknameResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateNicknameResponse {
  MetaDataNickname? get metaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateNicknameResponseCopyWith<UpdateNicknameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNicknameResponseCopyWith<$Res> {
  factory $UpdateNicknameResponseCopyWith(UpdateNicknameResponse value,
          $Res Function(UpdateNicknameResponse) then) =
      _$UpdateNicknameResponseCopyWithImpl<$Res>;
  $Res call({MetaDataNickname? metaData});

  $MetaDataNicknameCopyWith<$Res>? get metaData;
}

/// @nodoc
class _$UpdateNicknameResponseCopyWithImpl<$Res>
    implements $UpdateNicknameResponseCopyWith<$Res> {
  _$UpdateNicknameResponseCopyWithImpl(this._value, this._then);

  final UpdateNicknameResponse _value;
  // ignore: unused_field
  final $Res Function(UpdateNicknameResponse) _then;

  @override
  $Res call({
    Object? metaData = freezed,
  }) {
    return _then(_value.copyWith(
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataNickname?,
    ));
  }

  @override
  $MetaDataNicknameCopyWith<$Res>? get metaData {
    if (_value.metaData == null) {
      return null;
    }

    return $MetaDataNicknameCopyWith<$Res>(_value.metaData!, (value) {
      return _then(_value.copyWith(metaData: value));
    });
  }
}

/// @nodoc
abstract class _$$_UpdateNicknameResponseCopyWith<$Res>
    implements $UpdateNicknameResponseCopyWith<$Res> {
  factory _$$_UpdateNicknameResponseCopyWith(_$_UpdateNicknameResponse value,
          $Res Function(_$_UpdateNicknameResponse) then) =
      __$$_UpdateNicknameResponseCopyWithImpl<$Res>;
  @override
  $Res call({MetaDataNickname? metaData});

  @override
  $MetaDataNicknameCopyWith<$Res>? get metaData;
}

/// @nodoc
class __$$_UpdateNicknameResponseCopyWithImpl<$Res>
    extends _$UpdateNicknameResponseCopyWithImpl<$Res>
    implements _$$_UpdateNicknameResponseCopyWith<$Res> {
  __$$_UpdateNicknameResponseCopyWithImpl(_$_UpdateNicknameResponse _value,
      $Res Function(_$_UpdateNicknameResponse) _then)
      : super(_value, (v) => _then(v as _$_UpdateNicknameResponse));

  @override
  _$_UpdateNicknameResponse get _value =>
      super._value as _$_UpdateNicknameResponse;

  @override
  $Res call({
    Object? metaData = freezed,
  }) {
    return _then(_$_UpdateNicknameResponse(
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataNickname?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateNicknameResponse implements _UpdateNicknameResponse {
  const _$_UpdateNicknameResponse({this.metaData});

  factory _$_UpdateNicknameResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateNicknameResponseFromJson(json);

  @override
  final MetaDataNickname? metaData;

  @override
  String toString() {
    return 'UpdateNicknameResponse(metaData: $metaData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateNicknameResponse &&
            const DeepCollectionEquality().equals(other.metaData, metaData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(metaData));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateNicknameResponseCopyWith<_$_UpdateNicknameResponse> get copyWith =>
      __$$_UpdateNicknameResponseCopyWithImpl<_$_UpdateNicknameResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateNicknameResponseToJson(
      this,
    );
  }
}

abstract class _UpdateNicknameResponse implements UpdateNicknameResponse {
  const factory _UpdateNicknameResponse({final MetaDataNickname? metaData}) =
      _$_UpdateNicknameResponse;

  factory _UpdateNicknameResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateNicknameResponse.fromJson;

  @override
  MetaDataNickname? get metaData;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateNicknameResponseCopyWith<_$_UpdateNicknameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaDataNickname _$MetaDataNicknameFromJson(Map<String, dynamic> json) {
  return _MetaDataNickname.fromJson(json);
}

/// @nodoc
mixin _$MetaDataNickname {
  String? get status => throw _privateConstructorUsedError;
  List<ErrorNickname>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataNicknameCopyWith<MetaDataNickname> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataNicknameCopyWith<$Res> {
  factory $MetaDataNicknameCopyWith(
          MetaDataNickname value, $Res Function(MetaDataNickname) then) =
      _$MetaDataNicknameCopyWithImpl<$Res>;
  $Res call({String? status, List<ErrorNickname>? errors});
}

/// @nodoc
class _$MetaDataNicknameCopyWithImpl<$Res>
    implements $MetaDataNicknameCopyWith<$Res> {
  _$MetaDataNicknameCopyWithImpl(this._value, this._then);

  final MetaDataNickname _value;
  // ignore: unused_field
  final $Res Function(MetaDataNickname) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorNickname>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MetaDataNicknameCopyWith<$Res>
    implements $MetaDataNicknameCopyWith<$Res> {
  factory _$$_MetaDataNicknameCopyWith(
          _$_MetaDataNickname value, $Res Function(_$_MetaDataNickname) then) =
      __$$_MetaDataNicknameCopyWithImpl<$Res>;
  @override
  $Res call({String? status, List<ErrorNickname>? errors});
}

/// @nodoc
class __$$_MetaDataNicknameCopyWithImpl<$Res>
    extends _$MetaDataNicknameCopyWithImpl<$Res>
    implements _$$_MetaDataNicknameCopyWith<$Res> {
  __$$_MetaDataNicknameCopyWithImpl(
      _$_MetaDataNickname _value, $Res Function(_$_MetaDataNickname) _then)
      : super(_value, (v) => _then(v as _$_MetaDataNickname));

  @override
  _$_MetaDataNickname get _value => super._value as _$_MetaDataNickname;

  @override
  $Res call({
    Object? status = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_MetaDataNickname(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorNickname>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaDataNickname implements _MetaDataNickname {
  const _$_MetaDataNickname({this.status, final List<ErrorNickname>? errors})
      : _errors = errors;

  factory _$_MetaDataNickname.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataNicknameFromJson(json);

  @override
  final String? status;
  final List<ErrorNickname>? _errors;
  @override
  List<ErrorNickname>? get errors {
    final value = _errors;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MetaDataNickname(status: $status, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDataNickname &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  _$$_MetaDataNicknameCopyWith<_$_MetaDataNickname> get copyWith =>
      __$$_MetaDataNicknameCopyWithImpl<_$_MetaDataNickname>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataNicknameToJson(
      this,
    );
  }
}

abstract class _MetaDataNickname implements MetaDataNickname {
  const factory _MetaDataNickname(
      {final String? status,
      final List<ErrorNickname>? errors}) = _$_MetaDataNickname;

  factory _MetaDataNickname.fromJson(Map<String, dynamic> json) =
      _$_MetaDataNickname.fromJson;

  @override
  String? get status;
  @override
  List<ErrorNickname>? get errors;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataNicknameCopyWith<_$_MetaDataNickname> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorNickname _$ErrorNicknameFromJson(Map<String, dynamic> json) {
  return _ErrorNickname.fromJson(json);
}

/// @nodoc
mixin _$ErrorNickname {
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorNicknameCopyWith<ErrorNickname> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorNicknameCopyWith<$Res> {
  factory $ErrorNicknameCopyWith(
          ErrorNickname value, $Res Function(ErrorNickname) then) =
      _$ErrorNicknameCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ErrorNicknameCopyWithImpl<$Res>
    implements $ErrorNicknameCopyWith<$Res> {
  _$ErrorNicknameCopyWithImpl(this._value, this._then);

  final ErrorNickname _value;
  // ignore: unused_field
  final $Res Function(ErrorNickname) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorNicknameCopyWith<$Res>
    implements $ErrorNicknameCopyWith<$Res> {
  factory _$$_ErrorNicknameCopyWith(
          _$_ErrorNickname value, $Res Function(_$_ErrorNickname) then) =
      __$$_ErrorNicknameCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$_ErrorNicknameCopyWithImpl<$Res>
    extends _$ErrorNicknameCopyWithImpl<$Res>
    implements _$$_ErrorNicknameCopyWith<$Res> {
  __$$_ErrorNicknameCopyWithImpl(
      _$_ErrorNickname _value, $Res Function(_$_ErrorNickname) _then)
      : super(_value, (v) => _then(v as _$_ErrorNickname));

  @override
  _$_ErrorNickname get _value => super._value as _$_ErrorNickname;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ErrorNickname(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorNickname implements _ErrorNickname {
  const _$_ErrorNickname({this.message});

  factory _$_ErrorNickname.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorNicknameFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'ErrorNickname(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorNickname &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorNicknameCopyWith<_$_ErrorNickname> get copyWith =>
      __$$_ErrorNicknameCopyWithImpl<_$_ErrorNickname>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorNicknameToJson(
      this,
    );
  }
}

abstract class _ErrorNickname implements ErrorNickname {
  const factory _ErrorNickname({final String? message}) = _$_ErrorNickname;

  factory _ErrorNickname.fromJson(Map<String, dynamic> json) =
      _$_ErrorNickname.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorNicknameCopyWith<_$_ErrorNickname> get copyWith =>
      throw _privateConstructorUsedError;
}
