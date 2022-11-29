// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_video_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailVideoResponse _$DetailVideoResponseFromJson(Map<String, dynamic> json) {
  return _DetailVideoResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailVideoResponse {
  DataVideoDetail? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailVideoResponseCopyWith<DetailVideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailVideoResponseCopyWith<$Res> {
  factory $DetailVideoResponseCopyWith(
          DetailVideoResponse value, $Res Function(DetailVideoResponse) then) =
      _$DetailVideoResponseCopyWithImpl<$Res>;
  $Res call({DataVideoDetail? data});

  $DataVideoDetailCopyWith<$Res>? get data;
}

/// @nodoc
class _$DetailVideoResponseCopyWithImpl<$Res>
    implements $DetailVideoResponseCopyWith<$Res> {
  _$DetailVideoResponseCopyWithImpl(this._value, this._then);

  final DetailVideoResponse _value;
  // ignore: unused_field
  final $Res Function(DetailVideoResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataVideoDetail?,
    ));
  }

  @override
  $DataVideoDetailCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataVideoDetailCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_DetailVideoResponseCopyWith<$Res>
    implements $DetailVideoResponseCopyWith<$Res> {
  factory _$$_DetailVideoResponseCopyWith(_$_DetailVideoResponse value,
          $Res Function(_$_DetailVideoResponse) then) =
      __$$_DetailVideoResponseCopyWithImpl<$Res>;
  @override
  $Res call({DataVideoDetail? data});

  @override
  $DataVideoDetailCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DetailVideoResponseCopyWithImpl<$Res>
    extends _$DetailVideoResponseCopyWithImpl<$Res>
    implements _$$_DetailVideoResponseCopyWith<$Res> {
  __$$_DetailVideoResponseCopyWithImpl(_$_DetailVideoResponse _value,
      $Res Function(_$_DetailVideoResponse) _then)
      : super(_value, (v) => _then(v as _$_DetailVideoResponse));

  @override
  _$_DetailVideoResponse get _value => super._value as _$_DetailVideoResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_DetailVideoResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataVideoDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailVideoResponse implements _DetailVideoResponse {
  const _$_DetailVideoResponse({this.data});

  factory _$_DetailVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DetailVideoResponseFromJson(json);

  @override
  final DataVideoDetail? data;

  @override
  String toString() {
    return 'DetailVideoResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailVideoResponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_DetailVideoResponseCopyWith<_$_DetailVideoResponse> get copyWith =>
      __$$_DetailVideoResponseCopyWithImpl<_$_DetailVideoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailVideoResponseToJson(
      this,
    );
  }
}

abstract class _DetailVideoResponse implements DetailVideoResponse {
  const factory _DetailVideoResponse({final DataVideoDetail? data}) =
      _$_DetailVideoResponse;

  factory _DetailVideoResponse.fromJson(Map<String, dynamic> json) =
      _$_DetailVideoResponse.fromJson;

  @override
  DataVideoDetail? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DetailVideoResponseCopyWith<_$_DetailVideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataVideoDetail _$DataVideoDetailFromJson(Map<String, dynamic> json) {
  return _DataVideoDetail.fromJson(json);
}

/// @nodoc
mixin _$DataVideoDetail {
  int? get likeCount => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;
  bool? get isLiked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataVideoDetailCopyWith<DataVideoDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataVideoDetailCopyWith<$Res> {
  factory $DataVideoDetailCopyWith(
          DataVideoDetail value, $Res Function(DataVideoDetail) then) =
      _$DataVideoDetailCopyWithImpl<$Res>;
  $Res call({int? likeCount, int? commentCount, bool? isLiked});
}

/// @nodoc
class _$DataVideoDetailCopyWithImpl<$Res>
    implements $DataVideoDetailCopyWith<$Res> {
  _$DataVideoDetailCopyWithImpl(this._value, this._then);

  final DataVideoDetail _value;
  // ignore: unused_field
  final $Res Function(DataVideoDetail) _then;

  @override
  $Res call({
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_value.copyWith(
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataVideoDetailCopyWith<$Res>
    implements $DataVideoDetailCopyWith<$Res> {
  factory _$$_DataVideoDetailCopyWith(
          _$_DataVideoDetail value, $Res Function(_$_DataVideoDetail) then) =
      __$$_DataVideoDetailCopyWithImpl<$Res>;
  @override
  $Res call({int? likeCount, int? commentCount, bool? isLiked});
}

/// @nodoc
class __$$_DataVideoDetailCopyWithImpl<$Res>
    extends _$DataVideoDetailCopyWithImpl<$Res>
    implements _$$_DataVideoDetailCopyWith<$Res> {
  __$$_DataVideoDetailCopyWithImpl(
      _$_DataVideoDetail _value, $Res Function(_$_DataVideoDetail) _then)
      : super(_value, (v) => _then(v as _$_DataVideoDetail));

  @override
  _$_DataVideoDetail get _value => super._value as _$_DataVideoDetail;

  @override
  $Res call({
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_$_DataVideoDetail(
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataVideoDetail implements _DataVideoDetail {
  const _$_DataVideoDetail({this.likeCount, this.commentCount, this.isLiked});

  factory _$_DataVideoDetail.fromJson(Map<String, dynamic> json) =>
      _$$_DataVideoDetailFromJson(json);

  @override
  final int? likeCount;
  @override
  final int? commentCount;
  @override
  final bool? isLiked;

  @override
  String toString() {
    return 'DataVideoDetail(likeCount: $likeCount, commentCount: $commentCount, isLiked: $isLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataVideoDetail &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount) &&
            const DeepCollectionEquality()
                .equals(other.commentCount, commentCount) &&
            const DeepCollectionEquality().equals(other.isLiked, isLiked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(likeCount),
      const DeepCollectionEquality().hash(commentCount),
      const DeepCollectionEquality().hash(isLiked));

  @JsonKey(ignore: true)
  @override
  _$$_DataVideoDetailCopyWith<_$_DataVideoDetail> get copyWith =>
      __$$_DataVideoDetailCopyWithImpl<_$_DataVideoDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataVideoDetailToJson(
      this,
    );
  }
}

abstract class _DataVideoDetail implements DataVideoDetail {
  const factory _DataVideoDetail(
      {final int? likeCount,
      final int? commentCount,
      final bool? isLiked}) = _$_DataVideoDetail;

  factory _DataVideoDetail.fromJson(Map<String, dynamic> json) =
      _$_DataVideoDetail.fromJson;

  @override
  int? get likeCount;
  @override
  int? get commentCount;
  @override
  bool? get isLiked;
  @override
  @JsonKey(ignore: true)
  _$$_DataVideoDetailCopyWith<_$_DataVideoDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
