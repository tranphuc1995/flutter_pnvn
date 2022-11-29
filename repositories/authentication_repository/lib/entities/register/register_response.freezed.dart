// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return _RegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterResponse {
  DataRegisterResponse? get data => throw _privateConstructorUsedError;
  MetaDataRegister? get metaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseCopyWith<RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseCopyWith<$Res> {
  factory $RegisterResponseCopyWith(
          RegisterResponse value, $Res Function(RegisterResponse) then) =
      _$RegisterResponseCopyWithImpl<$Res>;
  $Res call({DataRegisterResponse? data, MetaDataRegister? metaData});

  $DataRegisterResponseCopyWith<$Res>? get data;
  $MetaDataRegisterCopyWith<$Res>? get metaData;
}

/// @nodoc
class _$RegisterResponseCopyWithImpl<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  _$RegisterResponseCopyWithImpl(this._value, this._then);

  final RegisterResponse _value;
  // ignore: unused_field
  final $Res Function(RegisterResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? metaData = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataRegisterResponse?,
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataRegister?,
    ));
  }

  @override
  $DataRegisterResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataRegisterResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  $MetaDataRegisterCopyWith<$Res>? get metaData {
    if (_value.metaData == null) {
      return null;
    }

    return $MetaDataRegisterCopyWith<$Res>(_value.metaData!, (value) {
      return _then(_value.copyWith(metaData: value));
    });
  }
}

/// @nodoc
abstract class _$$_RegisterResponseCopyWith<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  factory _$$_RegisterResponseCopyWith(
          _$_RegisterResponse value, $Res Function(_$_RegisterResponse) then) =
      __$$_RegisterResponseCopyWithImpl<$Res>;
  @override
  $Res call({DataRegisterResponse? data, MetaDataRegister? metaData});

  @override
  $DataRegisterResponseCopyWith<$Res>? get data;
  @override
  $MetaDataRegisterCopyWith<$Res>? get metaData;
}

/// @nodoc
class __$$_RegisterResponseCopyWithImpl<$Res>
    extends _$RegisterResponseCopyWithImpl<$Res>
    implements _$$_RegisterResponseCopyWith<$Res> {
  __$$_RegisterResponseCopyWithImpl(
      _$_RegisterResponse _value, $Res Function(_$_RegisterResponse) _then)
      : super(_value, (v) => _then(v as _$_RegisterResponse));

  @override
  _$_RegisterResponse get _value => super._value as _$_RegisterResponse;

  @override
  $Res call({
    Object? data = freezed,
    Object? metaData = freezed,
  }) {
    return _then(_$_RegisterResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataRegisterResponse?,
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataRegister?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterResponse implements _RegisterResponse {
  const _$_RegisterResponse({this.data, this.metaData});

  factory _$_RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterResponseFromJson(json);

  @override
  final DataRegisterResponse? data;
  @override
  final MetaDataRegister? metaData;

  @override
  String toString() {
    return 'RegisterResponse(data: $data, metaData: $metaData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterResponse &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.metaData, metaData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(metaData));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterResponseCopyWith<_$_RegisterResponse> get copyWith =>
      __$$_RegisterResponseCopyWithImpl<_$_RegisterResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterResponseToJson(this);
  }
}

abstract class _RegisterResponse implements RegisterResponse {
  const factory _RegisterResponse(
      {final DataRegisterResponse? data,
      final MetaDataRegister? metaData}) = _$_RegisterResponse;

  factory _RegisterResponse.fromJson(Map<String, dynamic> json) =
      _$_RegisterResponse.fromJson;

  @override
  DataRegisterResponse? get data;
  @override
  MetaDataRegister? get metaData;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterResponseCopyWith<_$_RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataRegisterResponse _$DataRegisterResponseFromJson(Map<String, dynamic> json) {
  return _DataRegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$DataRegisterResponse {
  String? get userName => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataRegisterResponseCopyWith<DataRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRegisterResponseCopyWith<$Res> {
  factory $DataRegisterResponseCopyWith(DataRegisterResponse value,
          $Res Function(DataRegisterResponse) then) =
      _$DataRegisterResponseCopyWithImpl<$Res>;
  $Res call({String? userName, String? userId});
}

/// @nodoc
class _$DataRegisterResponseCopyWithImpl<$Res>
    implements $DataRegisterResponseCopyWith<$Res> {
  _$DataRegisterResponseCopyWithImpl(this._value, this._then);

  final DataRegisterResponse _value;
  // ignore: unused_field
  final $Res Function(DataRegisterResponse) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataRegisterResponseCopyWith<$Res>
    implements $DataRegisterResponseCopyWith<$Res> {
  factory _$$_DataRegisterResponseCopyWith(_$_DataRegisterResponse value,
          $Res Function(_$_DataRegisterResponse) then) =
      __$$_DataRegisterResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? userName, String? userId});
}

/// @nodoc
class __$$_DataRegisterResponseCopyWithImpl<$Res>
    extends _$DataRegisterResponseCopyWithImpl<$Res>
    implements _$$_DataRegisterResponseCopyWith<$Res> {
  __$$_DataRegisterResponseCopyWithImpl(_$_DataRegisterResponse _value,
      $Res Function(_$_DataRegisterResponse) _then)
      : super(_value, (v) => _then(v as _$_DataRegisterResponse));

  @override
  _$_DataRegisterResponse get _value => super._value as _$_DataRegisterResponse;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_DataRegisterResponse(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataRegisterResponse implements _DataRegisterResponse {
  const _$_DataRegisterResponse({this.userName, this.userId});

  factory _$_DataRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataRegisterResponseFromJson(json);

  @override
  final String? userName;
  @override
  final String? userId;

  @override
  String toString() {
    return 'DataRegisterResponse(userName: $userName, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataRegisterResponse &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_DataRegisterResponseCopyWith<_$_DataRegisterResponse> get copyWith =>
      __$$_DataRegisterResponseCopyWithImpl<_$_DataRegisterResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataRegisterResponseToJson(this);
  }
}

abstract class _DataRegisterResponse implements DataRegisterResponse {
  const factory _DataRegisterResponse(
      {final String? userName, final String? userId}) = _$_DataRegisterResponse;

  factory _DataRegisterResponse.fromJson(Map<String, dynamic> json) =
      _$_DataRegisterResponse.fromJson;

  @override
  String? get userName;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_DataRegisterResponseCopyWith<_$_DataRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaDataRegister _$MetaDataRegisterFromJson(Map<String, dynamic> json) {
  return _MetaDataRegister.fromJson(json);
}

/// @nodoc
mixin _$MetaDataRegister {
  String? get message => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  List<ErrorDataRegister?>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataRegisterCopyWith<MetaDataRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataRegisterCopyWith<$Res> {
  factory $MetaDataRegisterCopyWith(
          MetaDataRegister value, $Res Function(MetaDataRegister) then) =
      _$MetaDataRegisterCopyWithImpl<$Res>;
  $Res call(
      {String? message,
      String? status,
      String? errorCode,
      List<ErrorDataRegister?>? errors});
}

/// @nodoc
class _$MetaDataRegisterCopyWithImpl<$Res>
    implements $MetaDataRegisterCopyWith<$Res> {
  _$MetaDataRegisterCopyWithImpl(this._value, this._then);

  final MetaDataRegister _value;
  // ignore: unused_field
  final $Res Function(MetaDataRegister) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errors = freezed,
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
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorDataRegister?>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MetaDataRegisterCopyWith<$Res>
    implements $MetaDataRegisterCopyWith<$Res> {
  factory _$$_MetaDataRegisterCopyWith(
          _$_MetaDataRegister value, $Res Function(_$_MetaDataRegister) then) =
      __$$_MetaDataRegisterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? message,
      String? status,
      String? errorCode,
      List<ErrorDataRegister?>? errors});
}

/// @nodoc
class __$$_MetaDataRegisterCopyWithImpl<$Res>
    extends _$MetaDataRegisterCopyWithImpl<$Res>
    implements _$$_MetaDataRegisterCopyWith<$Res> {
  __$$_MetaDataRegisterCopyWithImpl(
      _$_MetaDataRegister _value, $Res Function(_$_MetaDataRegister) _then)
      : super(_value, (v) => _then(v as _$_MetaDataRegister));

  @override
  _$_MetaDataRegister get _value => super._value as _$_MetaDataRegister;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_MetaDataRegister(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorDataRegister?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaDataRegister implements _MetaDataRegister {
  const _$_MetaDataRegister(
      {this.message,
      this.status,
      this.errorCode,
      final List<ErrorDataRegister?>? errors})
      : _errors = errors;

  factory _$_MetaDataRegister.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataRegisterFromJson(json);

  @override
  final String? message;
  @override
  final String? status;
  @override
  final String? errorCode;
  final List<ErrorDataRegister?>? _errors;
  @override
  List<ErrorDataRegister?>? get errors {
    final value = _errors;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MetaDataRegister(message: $message, status: $status, errorCode: $errorCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDataRegister &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorCode),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  _$$_MetaDataRegisterCopyWith<_$_MetaDataRegister> get copyWith =>
      __$$_MetaDataRegisterCopyWithImpl<_$_MetaDataRegister>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataRegisterToJson(this);
  }
}

abstract class _MetaDataRegister implements MetaDataRegister {
  const factory _MetaDataRegister(
      {final String? message,
      final String? status,
      final String? errorCode,
      final List<ErrorDataRegister?>? errors}) = _$_MetaDataRegister;

  factory _MetaDataRegister.fromJson(Map<String, dynamic> json) =
      _$_MetaDataRegister.fromJson;

  @override
  String? get message;
  @override
  String? get status;
  @override
  String? get errorCode;
  @override
  List<ErrorDataRegister?>? get errors;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataRegisterCopyWith<_$_MetaDataRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorDataRegister _$ErrorDataRegisterFromJson(Map<String, dynamic> json) {
  return _ErrorDataRegister.fromJson(json);
}

/// @nodoc
mixin _$ErrorDataRegister {
  String? get field => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDataRegisterCopyWith<ErrorDataRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDataRegisterCopyWith<$Res> {
  factory $ErrorDataRegisterCopyWith(
          ErrorDataRegister value, $Res Function(ErrorDataRegister) then) =
      _$ErrorDataRegisterCopyWithImpl<$Res>;
  $Res call({String? field, String? errorCode, String? message});
}

/// @nodoc
class _$ErrorDataRegisterCopyWithImpl<$Res>
    implements $ErrorDataRegisterCopyWith<$Res> {
  _$ErrorDataRegisterCopyWithImpl(this._value, this._then);

  final ErrorDataRegister _value;
  // ignore: unused_field
  final $Res Function(ErrorDataRegister) _then;

  @override
  $Res call({
    Object? field = freezed,
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorDataRegisterCopyWith<$Res>
    implements $ErrorDataRegisterCopyWith<$Res> {
  factory _$$_ErrorDataRegisterCopyWith(_$_ErrorDataRegister value,
          $Res Function(_$_ErrorDataRegister) then) =
      __$$_ErrorDataRegisterCopyWithImpl<$Res>;
  @override
  $Res call({String? field, String? errorCode, String? message});
}

/// @nodoc
class __$$_ErrorDataRegisterCopyWithImpl<$Res>
    extends _$ErrorDataRegisterCopyWithImpl<$Res>
    implements _$$_ErrorDataRegisterCopyWith<$Res> {
  __$$_ErrorDataRegisterCopyWithImpl(
      _$_ErrorDataRegister _value, $Res Function(_$_ErrorDataRegister) _then)
      : super(_value, (v) => _then(v as _$_ErrorDataRegister));

  @override
  _$_ErrorDataRegister get _value => super._value as _$_ErrorDataRegister;

  @override
  $Res call({
    Object? field = freezed,
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorDataRegister(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
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
class _$_ErrorDataRegister implements _ErrorDataRegister {
  const _$_ErrorDataRegister({this.field, this.errorCode, this.message});

  factory _$_ErrorDataRegister.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorDataRegisterFromJson(json);

  @override
  final String? field;
  @override
  final String? errorCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'ErrorDataRegister(field: $field, errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorDataRegister &&
            const DeepCollectionEquality().equals(other.field, field) &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(field),
      const DeepCollectionEquality().hash(errorCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorDataRegisterCopyWith<_$_ErrorDataRegister> get copyWith =>
      __$$_ErrorDataRegisterCopyWithImpl<_$_ErrorDataRegister>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorDataRegisterToJson(this);
  }
}

abstract class _ErrorDataRegister implements ErrorDataRegister {
  const factory _ErrorDataRegister(
      {final String? field,
      final String? errorCode,
      final String? message}) = _$_ErrorDataRegister;

  factory _ErrorDataRegister.fromJson(Map<String, dynamic> json) =
      _$_ErrorDataRegister.fromJson;

  @override
  String? get field;
  @override
  String? get errorCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorDataRegisterCopyWith<_$_ErrorDataRegister> get copyWith =>
      throw _privateConstructorUsedError;
}
