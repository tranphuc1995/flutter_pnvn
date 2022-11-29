// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListPostResponse _$ListPostResponseFromJson(Map<String, dynamic> json) {
  return _ListPostResponse.fromJson(json);
}

/// @nodoc
mixin _$ListPostResponse {
  List<DataPost>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListPostResponseCopyWith<ListPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPostResponseCopyWith<$Res> {
  factory $ListPostResponseCopyWith(
          ListPostResponse value, $Res Function(ListPostResponse) then) =
      _$ListPostResponseCopyWithImpl<$Res>;
  $Res call({List<DataPost>? data});
}

/// @nodoc
class _$ListPostResponseCopyWithImpl<$Res>
    implements $ListPostResponseCopyWith<$Res> {
  _$ListPostResponseCopyWithImpl(this._value, this._then);

  final ListPostResponse _value;
  // ignore: unused_field
  final $Res Function(ListPostResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataPost>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListPostResponseCopyWith<$Res>
    implements $ListPostResponseCopyWith<$Res> {
  factory _$$_ListPostResponseCopyWith(
          _$_ListPostResponse value, $Res Function(_$_ListPostResponse) then) =
      __$$_ListPostResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<DataPost>? data});
}

/// @nodoc
class __$$_ListPostResponseCopyWithImpl<$Res>
    extends _$ListPostResponseCopyWithImpl<$Res>
    implements _$$_ListPostResponseCopyWith<$Res> {
  __$$_ListPostResponseCopyWithImpl(
      _$_ListPostResponse _value, $Res Function(_$_ListPostResponse) _then)
      : super(_value, (v) => _then(v as _$_ListPostResponse));

  @override
  _$_ListPostResponse get _value => super._value as _$_ListPostResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ListPostResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataPost>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListPostResponse implements _ListPostResponse {
  const _$_ListPostResponse({final List<DataPost>? data}) : _data = data;

  factory _$_ListPostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListPostResponseFromJson(json);

  final List<DataPost>? _data;
  @override
  List<DataPost>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListPostResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListPostResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_ListPostResponseCopyWith<_$_ListPostResponse> get copyWith =>
      __$$_ListPostResponseCopyWithImpl<_$_ListPostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListPostResponseToJson(
      this,
    );
  }
}

abstract class _ListPostResponse implements ListPostResponse {
  const factory _ListPostResponse({final List<DataPost>? data}) =
      _$_ListPostResponse;

  factory _ListPostResponse.fromJson(Map<String, dynamic> json) =
      _$_ListPostResponse.fromJson;

  @override
  List<DataPost>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ListPostResponseCopyWith<_$_ListPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataPost _$DataPostFromJson(Map<String, dynamic> json) {
  return _DataPost.fromJson(json);
}

/// @nodoc
mixin _$DataPost {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get publishedDate => throw _privateConstructorUsedError;
  String? get viewCountText => throw _privateConstructorUsedError;
  String? get commentCountText => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  CategoryPost? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPostCopyWith<DataPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPostCopyWith<$Res> {
  factory $DataPostCopyWith(DataPost value, $Res Function(DataPost) then) =
      _$DataPostCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      String? thumbnail,
      String? shortDescription,
      String? description,
      String? author,
      String? publishedDate,
      String? viewCountText,
      String? commentCountText,
      String? avatar,
      CategoryPost? category});

  $CategoryPostCopyWith<$Res>? get category;
}

/// @nodoc
class _$DataPostCopyWithImpl<$Res> implements $DataPostCopyWith<$Res> {
  _$DataPostCopyWithImpl(this._value, this._then);

  final DataPost _value;
  // ignore: unused_field
  final $Res Function(DataPost) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? publishedDate = freezed,
    Object? viewCountText = freezed,
    Object? commentCountText = freezed,
    Object? avatar = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCountText: viewCountText == freezed
          ? _value.viewCountText
          : viewCountText // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCountText: commentCountText == freezed
          ? _value.commentCountText
          : commentCountText // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryPost?,
    ));
  }

  @override
  $CategoryPostCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryPostCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$$_DataPostCopyWith<$Res> implements $DataPostCopyWith<$Res> {
  factory _$$_DataPostCopyWith(
          _$_DataPost value, $Res Function(_$_DataPost) then) =
      __$$_DataPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      String? thumbnail,
      String? shortDescription,
      String? description,
      String? author,
      String? publishedDate,
      String? viewCountText,
      String? commentCountText,
      String? avatar,
      CategoryPost? category});

  @override
  $CategoryPostCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_DataPostCopyWithImpl<$Res> extends _$DataPostCopyWithImpl<$Res>
    implements _$$_DataPostCopyWith<$Res> {
  __$$_DataPostCopyWithImpl(
      _$_DataPost _value, $Res Function(_$_DataPost) _then)
      : super(_value, (v) => _then(v as _$_DataPost));

  @override
  _$_DataPost get _value => super._value as _$_DataPost;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? publishedDate = freezed,
    Object? viewCountText = freezed,
    Object? commentCountText = freezed,
    Object? avatar = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_DataPost(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCountText: viewCountText == freezed
          ? _value.viewCountText
          : viewCountText // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCountText: commentCountText == freezed
          ? _value.commentCountText
          : commentCountText // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryPost?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataPost implements _DataPost {
  const _$_DataPost(
      {this.id,
      this.title,
      this.thumbnail,
      this.shortDescription,
      this.description,
      this.author,
      this.publishedDate,
      this.viewCountText,
      this.commentCountText,
      this.avatar,
      this.category});

  factory _$_DataPost.fromJson(Map<String, dynamic> json) =>
      _$$_DataPostFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? thumbnail;
  @override
  final String? shortDescription;
  @override
  final String? description;
  @override
  final String? author;
  @override
  final String? publishedDate;
  @override
  final String? viewCountText;
  @override
  final String? commentCountText;
  @override
  final String? avatar;
  @override
  final CategoryPost? category;

  @override
  String toString() {
    return 'DataPost(id: $id, title: $title, thumbnail: $thumbnail, shortDescription: $shortDescription, description: $description, author: $author, publishedDate: $publishedDate, viewCountText: $viewCountText, commentCountText: $commentCountText, avatar: $avatar, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataPost &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality()
                .equals(other.shortDescription, shortDescription) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality()
                .equals(other.publishedDate, publishedDate) &&
            const DeepCollectionEquality()
                .equals(other.viewCountText, viewCountText) &&
            const DeepCollectionEquality()
                .equals(other.commentCountText, commentCountText) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(shortDescription),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(publishedDate),
      const DeepCollectionEquality().hash(viewCountText),
      const DeepCollectionEquality().hash(commentCountText),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$_DataPostCopyWith<_$_DataPost> get copyWith =>
      __$$_DataPostCopyWithImpl<_$_DataPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataPostToJson(
      this,
    );
  }
}

abstract class _DataPost implements DataPost {
  const factory _DataPost(
      {final String? id,
      final String? title,
      final String? thumbnail,
      final String? shortDescription,
      final String? description,
      final String? author,
      final String? publishedDate,
      final String? viewCountText,
      final String? commentCountText,
      final String? avatar,
      final CategoryPost? category}) = _$_DataPost;

  factory _DataPost.fromJson(Map<String, dynamic> json) = _$_DataPost.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get thumbnail;
  @override
  String? get shortDescription;
  @override
  String? get description;
  @override
  String? get author;
  @override
  String? get publishedDate;
  @override
  String? get viewCountText;
  @override
  String? get commentCountText;
  @override
  String? get avatar;
  @override
  CategoryPost? get category;
  @override
  @JsonKey(ignore: true)
  _$$_DataPostCopyWith<_$_DataPost> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryPost _$CategoryPostFromJson(Map<String, dynamic> json) {
  return _CategoryPost.fromJson(json);
}

/// @nodoc
mixin _$CategoryPost {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryPostCopyWith<CategoryPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryPostCopyWith<$Res> {
  factory $CategoryPostCopyWith(
          CategoryPost value, $Res Function(CategoryPost) then) =
      _$CategoryPostCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$CategoryPostCopyWithImpl<$Res> implements $CategoryPostCopyWith<$Res> {
  _$CategoryPostCopyWithImpl(this._value, this._then);

  final CategoryPost _value;
  // ignore: unused_field
  final $Res Function(CategoryPost) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryPostCopyWith<$Res>
    implements $CategoryPostCopyWith<$Res> {
  factory _$$_CategoryPostCopyWith(
          _$_CategoryPost value, $Res Function(_$_CategoryPost) then) =
      __$$_CategoryPostCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_CategoryPostCopyWithImpl<$Res>
    extends _$CategoryPostCopyWithImpl<$Res>
    implements _$$_CategoryPostCopyWith<$Res> {
  __$$_CategoryPostCopyWithImpl(
      _$_CategoryPost _value, $Res Function(_$_CategoryPost) _then)
      : super(_value, (v) => _then(v as _$_CategoryPost));

  @override
  _$_CategoryPost get _value => super._value as _$_CategoryPost;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CategoryPost(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryPost implements _CategoryPost {
  const _$_CategoryPost({this.id, this.name});

  factory _$_CategoryPost.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryPostFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'CategoryPost(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryPost &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryPostCopyWith<_$_CategoryPost> get copyWith =>
      __$$_CategoryPostCopyWithImpl<_$_CategoryPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryPostToJson(
      this,
    );
  }
}

abstract class _CategoryPost implements CategoryPost {
  const factory _CategoryPost({final String? id, final String? name}) =
      _$_CategoryPost;

  factory _CategoryPost.fromJson(Map<String, dynamic> json) =
      _$_CategoryPost.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryPostCopyWith<_$_CategoryPost> get copyWith =>
      throw _privateConstructorUsedError;
}
