// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_video_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListVideoResponse _$ListVideoResponseFromJson(Map<String, dynamic> json) {
  return _ListVideoResponse.fromJson(json);
}

/// @nodoc
mixin _$ListVideoResponse {
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListVideoResponseCopyWith<ListVideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListVideoResponseCopyWith<$Res> {
  factory $ListVideoResponseCopyWith(
          ListVideoResponse value, $Res Function(ListVideoResponse) then) =
      _$ListVideoResponseCopyWithImpl<$Res>;
  $Res call({List<Data>? data});
}

/// @nodoc
class _$ListVideoResponseCopyWithImpl<$Res>
    implements $ListVideoResponseCopyWith<$Res> {
  _$ListVideoResponseCopyWithImpl(this._value, this._then);

  final ListVideoResponse _value;
  // ignore: unused_field
  final $Res Function(ListVideoResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListVideoResponseCopyWith<$Res>
    implements $ListVideoResponseCopyWith<$Res> {
  factory _$$_ListVideoResponseCopyWith(_$_ListVideoResponse value,
          $Res Function(_$_ListVideoResponse) then) =
      __$$_ListVideoResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Data>? data});
}

/// @nodoc
class __$$_ListVideoResponseCopyWithImpl<$Res>
    extends _$ListVideoResponseCopyWithImpl<$Res>
    implements _$$_ListVideoResponseCopyWith<$Res> {
  __$$_ListVideoResponseCopyWithImpl(
      _$_ListVideoResponse _value, $Res Function(_$_ListVideoResponse) _then)
      : super(_value, (v) => _then(v as _$_ListVideoResponse));

  @override
  _$_ListVideoResponse get _value => super._value as _$_ListVideoResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ListVideoResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListVideoResponse implements _ListVideoResponse {
  const _$_ListVideoResponse({final List<Data>? data}) : _data = data;

  factory _$_ListVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListVideoResponseFromJson(json);

  final List<Data>? _data;
  @override
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListVideoResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListVideoResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_ListVideoResponseCopyWith<_$_ListVideoResponse> get copyWith =>
      __$$_ListVideoResponseCopyWithImpl<_$_ListVideoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListVideoResponseToJson(
      this,
    );
  }
}

abstract class _ListVideoResponse implements ListVideoResponse {
  const factory _ListVideoResponse({final List<Data>? data}) =
      _$_ListVideoResponse;

  factory _ListVideoResponse.fromJson(Map<String, dynamic> json) =
      _$_ListVideoResponse.fromJson;

  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ListVideoResponseCopyWith<_$_ListVideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get id => throw _privateConstructorUsedError;
  String? get videoId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get uploadedDate => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get authorName => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? videoId,
      String? title,
      String? uploadedDate,
      String? imageUrl,
      String? authorName,
      String? videoUrl});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoId = freezed,
    Object? title = freezed,
    Object? uploadedDate = freezed,
    Object? imageUrl = freezed,
    Object? authorName = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedDate: uploadedDate == freezed
          ? _value.uploadedDate
          : uploadedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? videoId,
      String? title,
      String? uploadedDate,
      String? imageUrl,
      String? authorName,
      String? videoUrl});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoId = freezed,
    Object? title = freezed,
    Object? uploadedDate = freezed,
    Object? imageUrl = freezed,
    Object? authorName = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_$_Data(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedDate: uploadedDate == freezed
          ? _value.uploadedDate
          : uploadedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.id,
      this.videoId,
      this.title,
      this.uploadedDate,
      this.imageUrl,
      this.authorName,
      this.videoUrl});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? id;
  @override
  final String? videoId;
  @override
  final String? title;
  @override
  final String? uploadedDate;
  @override
  final String? imageUrl;
  @override
  final String? authorName;
  @override
  final String? videoUrl;

  @override
  String toString() {
    return 'Data(id: $id, videoId: $videoId, title: $title, uploadedDate: $uploadedDate, imageUrl: $imageUrl, authorName: $authorName, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.videoId, videoId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.uploadedDate, uploadedDate) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.authorName, authorName) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(videoId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(uploadedDate),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(authorName),
      const DeepCollectionEquality().hash(videoUrl));

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final String? id,
      final String? videoId,
      final String? title,
      final String? uploadedDate,
      final String? imageUrl,
      final String? authorName,
      final String? videoUrl}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get id;
  @override
  String? get videoId;
  @override
  String? get title;
  @override
  String? get uploadedDate;
  @override
  String? get imageUrl;
  @override
  String? get authorName;
  @override
  String? get videoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
