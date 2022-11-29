// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_url_video_new.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetUrlVideoNew _$GetUrlVideoNewFromJson(Map<String, dynamic> json) {
  return _GetUrlVideoNew.fromJson(json);
}

/// @nodoc
mixin _$GetUrlVideoNew {
  ItemListDetail? get ItemList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUrlVideoNewCopyWith<GetUrlVideoNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUrlVideoNewCopyWith<$Res> {
  factory $GetUrlVideoNewCopyWith(
          GetUrlVideoNew value, $Res Function(GetUrlVideoNew) then) =
      _$GetUrlVideoNewCopyWithImpl<$Res>;
  $Res call({ItemListDetail? ItemList});

  $ItemListDetailCopyWith<$Res>? get ItemList;
}

/// @nodoc
class _$GetUrlVideoNewCopyWithImpl<$Res>
    implements $GetUrlVideoNewCopyWith<$Res> {
  _$GetUrlVideoNewCopyWithImpl(this._value, this._then);

  final GetUrlVideoNew _value;
  // ignore: unused_field
  final $Res Function(GetUrlVideoNew) _then;

  @override
  $Res call({
    Object? ItemList = freezed,
  }) {
    return _then(_value.copyWith(
      ItemList: ItemList == freezed
          ? _value.ItemList
          : ItemList // ignore: cast_nullable_to_non_nullable
              as ItemListDetail?,
    ));
  }

  @override
  $ItemListDetailCopyWith<$Res>? get ItemList {
    if (_value.ItemList == null) {
      return null;
    }

    return $ItemListDetailCopyWith<$Res>(_value.ItemList!, (value) {
      return _then(_value.copyWith(ItemList: value));
    });
  }
}

/// @nodoc
abstract class _$$_GetUrlVideoNewCopyWith<$Res>
    implements $GetUrlVideoNewCopyWith<$Res> {
  factory _$$_GetUrlVideoNewCopyWith(
          _$_GetUrlVideoNew value, $Res Function(_$_GetUrlVideoNew) then) =
      __$$_GetUrlVideoNewCopyWithImpl<$Res>;
  @override
  $Res call({ItemListDetail? ItemList});

  @override
  $ItemListDetailCopyWith<$Res>? get ItemList;
}

/// @nodoc
class __$$_GetUrlVideoNewCopyWithImpl<$Res>
    extends _$GetUrlVideoNewCopyWithImpl<$Res>
    implements _$$_GetUrlVideoNewCopyWith<$Res> {
  __$$_GetUrlVideoNewCopyWithImpl(
      _$_GetUrlVideoNew _value, $Res Function(_$_GetUrlVideoNew) _then)
      : super(_value, (v) => _then(v as _$_GetUrlVideoNew));

  @override
  _$_GetUrlVideoNew get _value => super._value as _$_GetUrlVideoNew;

  @override
  $Res call({
    Object? ItemList = freezed,
  }) {
    return _then(_$_GetUrlVideoNew(
      ItemList: ItemList == freezed
          ? _value.ItemList
          : ItemList // ignore: cast_nullable_to_non_nullable
              as ItemListDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetUrlVideoNew implements _GetUrlVideoNew {
  const _$_GetUrlVideoNew({this.ItemList});

  factory _$_GetUrlVideoNew.fromJson(Map<String, dynamic> json) =>
      _$$_GetUrlVideoNewFromJson(json);

  @override
  final ItemListDetail? ItemList;

  @override
  String toString() {
    return 'GetUrlVideoNew(ItemList: $ItemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUrlVideoNew &&
            const DeepCollectionEquality().equals(other.ItemList, ItemList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ItemList));

  @JsonKey(ignore: true)
  @override
  _$$_GetUrlVideoNewCopyWith<_$_GetUrlVideoNew> get copyWith =>
      __$$_GetUrlVideoNewCopyWithImpl<_$_GetUrlVideoNew>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetUrlVideoNewToJson(
      this,
    );
  }
}

abstract class _GetUrlVideoNew implements GetUrlVideoNew {
  const factory _GetUrlVideoNew({final ItemListDetail? ItemList}) =
      _$_GetUrlVideoNew;

  factory _GetUrlVideoNew.fromJson(Map<String, dynamic> json) =
      _$_GetUrlVideoNew.fromJson;

  @override
  ItemListDetail? get ItemList;
  @override
  @JsonKey(ignore: true)
  _$$_GetUrlVideoNewCopyWith<_$_GetUrlVideoNew> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemListDetail _$ItemListDetailFromJson(Map<String, dynamic> json) {
  return _ItemListDetail.fromJson(json);
}

/// @nodoc
mixin _$ItemListDetail {
  VideoDetail? get video => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemListDetailCopyWith<ItemListDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListDetailCopyWith<$Res> {
  factory $ItemListDetailCopyWith(
          ItemListDetail value, $Res Function(ItemListDetail) then) =
      _$ItemListDetailCopyWithImpl<$Res>;
  $Res call({VideoDetail? video});

  $VideoDetailCopyWith<$Res>? get video;
}

/// @nodoc
class _$ItemListDetailCopyWithImpl<$Res>
    implements $ItemListDetailCopyWith<$Res> {
  _$ItemListDetailCopyWithImpl(this._value, this._then);

  final ItemListDetail _value;
  // ignore: unused_field
  final $Res Function(ItemListDetail) _then;

  @override
  $Res call({
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoDetail?,
    ));
  }

  @override
  $VideoDetailCopyWith<$Res>? get video {
    if (_value.video == null) {
      return null;
    }

    return $VideoDetailCopyWith<$Res>(_value.video!, (value) {
      return _then(_value.copyWith(video: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemListDetailCopyWith<$Res>
    implements $ItemListDetailCopyWith<$Res> {
  factory _$$_ItemListDetailCopyWith(
          _$_ItemListDetail value, $Res Function(_$_ItemListDetail) then) =
      __$$_ItemListDetailCopyWithImpl<$Res>;
  @override
  $Res call({VideoDetail? video});

  @override
  $VideoDetailCopyWith<$Res>? get video;
}

/// @nodoc
class __$$_ItemListDetailCopyWithImpl<$Res>
    extends _$ItemListDetailCopyWithImpl<$Res>
    implements _$$_ItemListDetailCopyWith<$Res> {
  __$$_ItemListDetailCopyWithImpl(
      _$_ItemListDetail _value, $Res Function(_$_ItemListDetail) _then)
      : super(_value, (v) => _then(v as _$_ItemListDetail));

  @override
  _$_ItemListDetail get _value => super._value as _$_ItemListDetail;

  @override
  $Res call({
    Object? video = freezed,
  }) {
    return _then(_$_ItemListDetail(
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemListDetail implements _ItemListDetail {
  const _$_ItemListDetail({this.video});

  factory _$_ItemListDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ItemListDetailFromJson(json);

  @override
  final VideoDetail? video;

  @override
  String toString() {
    return 'ItemListDetail(video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListDetail &&
            const DeepCollectionEquality().equals(other.video, video));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(video));

  @JsonKey(ignore: true)
  @override
  _$$_ItemListDetailCopyWith<_$_ItemListDetail> get copyWith =>
      __$$_ItemListDetailCopyWithImpl<_$_ItemListDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemListDetailToJson(
      this,
    );
  }
}

abstract class _ItemListDetail implements ItemListDetail {
  const factory _ItemListDetail({final VideoDetail? video}) = _$_ItemListDetail;

  factory _ItemListDetail.fromJson(Map<String, dynamic> json) =
      _$_ItemListDetail.fromJson;

  @override
  VideoDetail? get video;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListDetailCopyWith<_$_ItemListDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoDetail _$VideoDetailFromJson(Map<String, dynamic> json) {
  return _VideoDetail.fromJson(json);
}

/// @nodoc
mixin _$VideoDetail {
  List<Preload>? get preloadList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDetailCopyWith<VideoDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDetailCopyWith<$Res> {
  factory $VideoDetailCopyWith(
          VideoDetail value, $Res Function(VideoDetail) then) =
      _$VideoDetailCopyWithImpl<$Res>;
  $Res call({List<Preload>? preloadList});
}

/// @nodoc
class _$VideoDetailCopyWithImpl<$Res> implements $VideoDetailCopyWith<$Res> {
  _$VideoDetailCopyWithImpl(this._value, this._then);

  final VideoDetail _value;
  // ignore: unused_field
  final $Res Function(VideoDetail) _then;

  @override
  $Res call({
    Object? preloadList = freezed,
  }) {
    return _then(_value.copyWith(
      preloadList: preloadList == freezed
          ? _value.preloadList
          : preloadList // ignore: cast_nullable_to_non_nullable
              as List<Preload>?,
    ));
  }
}

/// @nodoc
abstract class _$$_VideoDetailCopyWith<$Res>
    implements $VideoDetailCopyWith<$Res> {
  factory _$$_VideoDetailCopyWith(
          _$_VideoDetail value, $Res Function(_$_VideoDetail) then) =
      __$$_VideoDetailCopyWithImpl<$Res>;
  @override
  $Res call({List<Preload>? preloadList});
}

/// @nodoc
class __$$_VideoDetailCopyWithImpl<$Res> extends _$VideoDetailCopyWithImpl<$Res>
    implements _$$_VideoDetailCopyWith<$Res> {
  __$$_VideoDetailCopyWithImpl(
      _$_VideoDetail _value, $Res Function(_$_VideoDetail) _then)
      : super(_value, (v) => _then(v as _$_VideoDetail));

  @override
  _$_VideoDetail get _value => super._value as _$_VideoDetail;

  @override
  $Res call({
    Object? preloadList = freezed,
  }) {
    return _then(_$_VideoDetail(
      preloadList: preloadList == freezed
          ? _value._preloadList
          : preloadList // ignore: cast_nullable_to_non_nullable
              as List<Preload>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoDetail implements _VideoDetail {
  const _$_VideoDetail({final List<Preload>? preloadList})
      : _preloadList = preloadList;

  factory _$_VideoDetail.fromJson(Map<String, dynamic> json) =>
      _$$_VideoDetailFromJson(json);

  final List<Preload>? _preloadList;
  @override
  List<Preload>? get preloadList {
    final value = _preloadList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VideoDetail(preloadList: $preloadList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoDetail &&
            const DeepCollectionEquality()
                .equals(other._preloadList, _preloadList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_preloadList));

  @JsonKey(ignore: true)
  @override
  _$$_VideoDetailCopyWith<_$_VideoDetail> get copyWith =>
      __$$_VideoDetailCopyWithImpl<_$_VideoDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoDetailToJson(
      this,
    );
  }
}

abstract class _VideoDetail implements VideoDetail {
  const factory _VideoDetail({final List<Preload>? preloadList}) =
      _$_VideoDetail;

  factory _VideoDetail.fromJson(Map<String, dynamic> json) =
      _$_VideoDetail.fromJson;

  @override
  List<Preload>? get preloadList;
  @override
  @JsonKey(ignore: true)
  _$$_VideoDetailCopyWith<_$_VideoDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Preload _$PreloadFromJson(Map<String, dynamic> json) {
  return _Preload.fromJson(json);
}

/// @nodoc
mixin _$Preload {
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreloadCopyWith<Preload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreloadCopyWith<$Res> {
  factory $PreloadCopyWith(Preload value, $Res Function(Preload) then) =
      _$PreloadCopyWithImpl<$Res>;
  $Res call({String? url});
}

/// @nodoc
class _$PreloadCopyWithImpl<$Res> implements $PreloadCopyWith<$Res> {
  _$PreloadCopyWithImpl(this._value, this._then);

  final Preload _value;
  // ignore: unused_field
  final $Res Function(Preload) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PreloadCopyWith<$Res> implements $PreloadCopyWith<$Res> {
  factory _$$_PreloadCopyWith(
          _$_Preload value, $Res Function(_$_Preload) then) =
      __$$_PreloadCopyWithImpl<$Res>;
  @override
  $Res call({String? url});
}

/// @nodoc
class __$$_PreloadCopyWithImpl<$Res> extends _$PreloadCopyWithImpl<$Res>
    implements _$$_PreloadCopyWith<$Res> {
  __$$_PreloadCopyWithImpl(_$_Preload _value, $Res Function(_$_Preload) _then)
      : super(_value, (v) => _then(v as _$_Preload));

  @override
  _$_Preload get _value => super._value as _$_Preload;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_Preload(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Preload implements _Preload {
  const _$_Preload({this.url});

  factory _$_Preload.fromJson(Map<String, dynamic> json) =>
      _$$_PreloadFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'Preload(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Preload &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_PreloadCopyWith<_$_Preload> get copyWith =>
      __$$_PreloadCopyWithImpl<_$_Preload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreloadToJson(
      this,
    );
  }
}

abstract class _Preload implements Preload {
  const factory _Preload({final String? url}) = _$_Preload;

  factory _Preload.fromJson(Map<String, dynamic> json) = _$_Preload.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PreloadCopyWith<_$_Preload> get copyWith =>
      throw _privateConstructorUsedError;
}
