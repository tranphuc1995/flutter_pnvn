// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckPasswordResponse _$CheckPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _CheckPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckPasswordResponse {
  DataCheckPassword? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckPasswordResponseCopyWith<CheckPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPasswordResponseCopyWith<$Res> {
  factory $CheckPasswordResponseCopyWith(CheckPasswordResponse value,
          $Res Function(CheckPasswordResponse) then) =
      _$CheckPasswordResponseCopyWithImpl<$Res>;
  $Res call({DataCheckPassword? data});

  $DataCheckPasswordCopyWith<$Res>? get data;
}

/// @nodoc
class _$CheckPasswordResponseCopyWithImpl<$Res>
    implements $CheckPasswordResponseCopyWith<$Res> {
  _$CheckPasswordResponseCopyWithImpl(this._value, this._then);

  final CheckPasswordResponse _value;
  // ignore: unused_field
  final $Res Function(CheckPasswordResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataCheckPassword?,
    ));
  }

  @override
  $DataCheckPasswordCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCheckPasswordCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_CheckPasswordResponseCopyWith<$Res>
    implements $CheckPasswordResponseCopyWith<$Res> {
  factory _$$_CheckPasswordResponseCopyWith(_$_CheckPasswordResponse value,
          $Res Function(_$_CheckPasswordResponse) then) =
      __$$_CheckPasswordResponseCopyWithImpl<$Res>;
  @override
  $Res call({DataCheckPassword? data});

  @override
  $DataCheckPasswordCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CheckPasswordResponseCopyWithImpl<$Res>
    extends _$CheckPasswordResponseCopyWithImpl<$Res>
    implements _$$_CheckPasswordResponseCopyWith<$Res> {
  __$$_CheckPasswordResponseCopyWithImpl(_$_CheckPasswordResponse _value,
      $Res Function(_$_CheckPasswordResponse) _then)
      : super(_value, (v) => _then(v as _$_CheckPasswordResponse));

  @override
  _$_CheckPasswordResponse get _value =>
      super._value as _$_CheckPasswordResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CheckPasswordResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataCheckPassword?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckPasswordResponse implements _CheckPasswordResponse {
  const _$_CheckPasswordResponse({this.data});

  factory _$_CheckPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CheckPasswordResponseFromJson(json);

  @override
  final DataCheckPassword? data;

  @override
  String toString() {
    return 'CheckPasswordResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckPasswordResponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_CheckPasswordResponseCopyWith<_$_CheckPasswordResponse> get copyWith =>
      __$$_CheckPasswordResponseCopyWithImpl<_$_CheckPasswordResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckPasswordResponseToJson(this);
  }
}

abstract class _CheckPasswordResponse implements CheckPasswordResponse {
  const factory _CheckPasswordResponse({final DataCheckPassword? data}) =
      _$_CheckPasswordResponse;

  factory _CheckPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckPasswordResponse.fromJson;

  @override
  DataCheckPassword? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CheckPasswordResponseCopyWith<_$_CheckPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataCheckPassword _$DataCheckPasswordFromJson(Map<String, dynamic> json) {
  return _DataCheckPassword.fromJson(json);
}

/// @nodoc
mixin _$DataCheckPassword {
  bool? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCheckPasswordCopyWith<DataCheckPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCheckPasswordCopyWith<$Res> {
  factory $DataCheckPasswordCopyWith(
          DataCheckPassword value, $Res Function(DataCheckPassword) then) =
      _$DataCheckPasswordCopyWithImpl<$Res>;
  $Res call({bool? result});
}

/// @nodoc
class _$DataCheckPasswordCopyWithImpl<$Res>
    implements $DataCheckPasswordCopyWith<$Res> {
  _$DataCheckPasswordCopyWithImpl(this._value, this._then);

  final DataCheckPassword _value;
  // ignore: unused_field
  final $Res Function(DataCheckPassword) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataCheckPasswordCopyWith<$Res>
    implements $DataCheckPasswordCopyWith<$Res> {
  factory _$$_DataCheckPasswordCopyWith(_$_DataCheckPassword value,
          $Res Function(_$_DataCheckPassword) then) =
      __$$_DataCheckPasswordCopyWithImpl<$Res>;
  @override
  $Res call({bool? result});
}

/// @nodoc
class __$$_DataCheckPasswordCopyWithImpl<$Res>
    extends _$DataCheckPasswordCopyWithImpl<$Res>
    implements _$$_DataCheckPasswordCopyWith<$Res> {
  __$$_DataCheckPasswordCopyWithImpl(
      _$_DataCheckPassword _value, $Res Function(_$_DataCheckPassword) _then)
      : super(_value, (v) => _then(v as _$_DataCheckPassword));

  @override
  _$_DataCheckPassword get _value => super._value as _$_DataCheckPassword;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$_DataCheckPassword(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataCheckPassword implements _DataCheckPassword {
  const _$_DataCheckPassword({this.result});

  factory _$_DataCheckPassword.fromJson(Map<String, dynamic> json) =>
      _$$_DataCheckPasswordFromJson(json);

  @override
  final bool? result;

  @override
  String toString() {
    return 'DataCheckPassword(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataCheckPassword &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_DataCheckPasswordCopyWith<_$_DataCheckPassword> get copyWith =>
      __$$_DataCheckPasswordCopyWithImpl<_$_DataCheckPassword>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataCheckPasswordToJson(this);
  }
}

abstract class _DataCheckPassword implements DataCheckPassword {
  const factory _DataCheckPassword({final bool? result}) = _$_DataCheckPassword;

  factory _DataCheckPassword.fromJson(Map<String, dynamic> json) =
      _$_DataCheckPassword.fromJson;

  @override
  bool? get result;
  @override
  @JsonKey(ignore: true)
  _$$_DataCheckPasswordCopyWith<_$_DataCheckPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
