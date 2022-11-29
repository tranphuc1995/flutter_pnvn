// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadFileResponse _$UploadFileResponseFromJson(Map<String, dynamic> json) {
  return _UploadFileResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadFileResponse {
  DataUploadFile? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadFileResponseCopyWith<UploadFileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileResponseCopyWith<$Res> {
  factory $UploadFileResponseCopyWith(
          UploadFileResponse value, $Res Function(UploadFileResponse) then) =
      _$UploadFileResponseCopyWithImpl<$Res>;
  $Res call({DataUploadFile? data});

  $DataUploadFileCopyWith<$Res>? get data;
}

/// @nodoc
class _$UploadFileResponseCopyWithImpl<$Res>
    implements $UploadFileResponseCopyWith<$Res> {
  _$UploadFileResponseCopyWithImpl(this._value, this._then);

  final UploadFileResponse _value;
  // ignore: unused_field
  final $Res Function(UploadFileResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataUploadFile?,
    ));
  }

  @override
  $DataUploadFileCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataUploadFileCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_UploadFileResponseCopyWith<$Res>
    implements $UploadFileResponseCopyWith<$Res> {
  factory _$$_UploadFileResponseCopyWith(_$_UploadFileResponse value,
          $Res Function(_$_UploadFileResponse) then) =
      __$$_UploadFileResponseCopyWithImpl<$Res>;
  @override
  $Res call({DataUploadFile? data});

  @override
  $DataUploadFileCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_UploadFileResponseCopyWithImpl<$Res>
    extends _$UploadFileResponseCopyWithImpl<$Res>
    implements _$$_UploadFileResponseCopyWith<$Res> {
  __$$_UploadFileResponseCopyWithImpl(
      _$_UploadFileResponse _value, $Res Function(_$_UploadFileResponse) _then)
      : super(_value, (v) => _then(v as _$_UploadFileResponse));

  @override
  _$_UploadFileResponse get _value => super._value as _$_UploadFileResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_UploadFileResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataUploadFile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadFileResponse implements _UploadFileResponse {
  const _$_UploadFileResponse({this.data});

  factory _$_UploadFileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UploadFileResponseFromJson(json);

  @override
  final DataUploadFile? data;

  @override
  String toString() {
    return 'UploadFileResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadFileResponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_UploadFileResponseCopyWith<_$_UploadFileResponse> get copyWith =>
      __$$_UploadFileResponseCopyWithImpl<_$_UploadFileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadFileResponseToJson(this);
  }
}

abstract class _UploadFileResponse implements UploadFileResponse {
  const factory _UploadFileResponse({final DataUploadFile? data}) =
      _$_UploadFileResponse;

  factory _UploadFileResponse.fromJson(Map<String, dynamic> json) =
      _$_UploadFileResponse.fromJson;

  @override
  DataUploadFile? get data;
  @override
  @JsonKey(ignore: true)
  _$$_UploadFileResponseCopyWith<_$_UploadFileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataUploadFile _$DataUploadFileFromJson(Map<String, dynamic> json) {
  return _DataUploadFile.fromJson(json);
}

/// @nodoc
mixin _$DataUploadFile {
  String? get fileUrlOrigin => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataUploadFileCopyWith<DataUploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataUploadFileCopyWith<$Res> {
  factory $DataUploadFileCopyWith(
          DataUploadFile value, $Res Function(DataUploadFile) then) =
      _$DataUploadFileCopyWithImpl<$Res>;
  $Res call({String? fileUrlOrigin, String? fileUrl});
}

/// @nodoc
class _$DataUploadFileCopyWithImpl<$Res>
    implements $DataUploadFileCopyWith<$Res> {
  _$DataUploadFileCopyWithImpl(this._value, this._then);

  final DataUploadFile _value;
  // ignore: unused_field
  final $Res Function(DataUploadFile) _then;

  @override
  $Res call({
    Object? fileUrlOrigin = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      fileUrlOrigin: fileUrlOrigin == freezed
          ? _value.fileUrlOrigin
          : fileUrlOrigin // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataUploadFileCopyWith<$Res>
    implements $DataUploadFileCopyWith<$Res> {
  factory _$$_DataUploadFileCopyWith(
          _$_DataUploadFile value, $Res Function(_$_DataUploadFile) then) =
      __$$_DataUploadFileCopyWithImpl<$Res>;
  @override
  $Res call({String? fileUrlOrigin, String? fileUrl});
}

/// @nodoc
class __$$_DataUploadFileCopyWithImpl<$Res>
    extends _$DataUploadFileCopyWithImpl<$Res>
    implements _$$_DataUploadFileCopyWith<$Res> {
  __$$_DataUploadFileCopyWithImpl(
      _$_DataUploadFile _value, $Res Function(_$_DataUploadFile) _then)
      : super(_value, (v) => _then(v as _$_DataUploadFile));

  @override
  _$_DataUploadFile get _value => super._value as _$_DataUploadFile;

  @override
  $Res call({
    Object? fileUrlOrigin = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_$_DataUploadFile(
      fileUrlOrigin: fileUrlOrigin == freezed
          ? _value.fileUrlOrigin
          : fileUrlOrigin // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataUploadFile implements _DataUploadFile {
  const _$_DataUploadFile({this.fileUrlOrigin, this.fileUrl});

  factory _$_DataUploadFile.fromJson(Map<String, dynamic> json) =>
      _$$_DataUploadFileFromJson(json);

  @override
  final String? fileUrlOrigin;
  @override
  final String? fileUrl;

  @override
  String toString() {
    return 'DataUploadFile(fileUrlOrigin: $fileUrlOrigin, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataUploadFile &&
            const DeepCollectionEquality()
                .equals(other.fileUrlOrigin, fileUrlOrigin) &&
            const DeepCollectionEquality().equals(other.fileUrl, fileUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileUrlOrigin),
      const DeepCollectionEquality().hash(fileUrl));

  @JsonKey(ignore: true)
  @override
  _$$_DataUploadFileCopyWith<_$_DataUploadFile> get copyWith =>
      __$$_DataUploadFileCopyWithImpl<_$_DataUploadFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataUploadFileToJson(this);
  }
}

abstract class _DataUploadFile implements DataUploadFile {
  const factory _DataUploadFile(
      {final String? fileUrlOrigin, final String? fileUrl}) = _$_DataUploadFile;

  factory _DataUploadFile.fromJson(Map<String, dynamic> json) =
      _$_DataUploadFile.fromJson;

  @override
  String? get fileUrlOrigin;
  @override
  String? get fileUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DataUploadFileCopyWith<_$_DataUploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}
