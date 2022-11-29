// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListCategoryResponse _$ListCategoryResponseFromJson(Map<String, dynamic> json) {
  return _ListCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$ListCategoryResponse {
  List<DataCategory>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListCategoryResponseCopyWith<ListCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCategoryResponseCopyWith<$Res> {
  factory $ListCategoryResponseCopyWith(ListCategoryResponse value,
          $Res Function(ListCategoryResponse) then) =
      _$ListCategoryResponseCopyWithImpl<$Res>;
  $Res call({List<DataCategory>? data});
}

/// @nodoc
class _$ListCategoryResponseCopyWithImpl<$Res>
    implements $ListCategoryResponseCopyWith<$Res> {
  _$ListCategoryResponseCopyWithImpl(this._value, this._then);

  final ListCategoryResponse _value;
  // ignore: unused_field
  final $Res Function(ListCategoryResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataCategory>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListCategoryResponseCopyWith<$Res>
    implements $ListCategoryResponseCopyWith<$Res> {
  factory _$$_ListCategoryResponseCopyWith(_$_ListCategoryResponse value,
          $Res Function(_$_ListCategoryResponse) then) =
      __$$_ListCategoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<DataCategory>? data});
}

/// @nodoc
class __$$_ListCategoryResponseCopyWithImpl<$Res>
    extends _$ListCategoryResponseCopyWithImpl<$Res>
    implements _$$_ListCategoryResponseCopyWith<$Res> {
  __$$_ListCategoryResponseCopyWithImpl(_$_ListCategoryResponse _value,
      $Res Function(_$_ListCategoryResponse) _then)
      : super(_value, (v) => _then(v as _$_ListCategoryResponse));

  @override
  _$_ListCategoryResponse get _value => super._value as _$_ListCategoryResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ListCategoryResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListCategoryResponse implements _ListCategoryResponse {
  const _$_ListCategoryResponse({final List<DataCategory>? data})
      : _data = data;

  factory _$_ListCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListCategoryResponseFromJson(json);

  final List<DataCategory>? _data;
  @override
  List<DataCategory>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListCategoryResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListCategoryResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_ListCategoryResponseCopyWith<_$_ListCategoryResponse> get copyWith =>
      __$$_ListCategoryResponseCopyWithImpl<_$_ListCategoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListCategoryResponseToJson(
      this,
    );
  }
}

abstract class _ListCategoryResponse implements ListCategoryResponse {
  const factory _ListCategoryResponse({final List<DataCategory>? data}) =
      _$_ListCategoryResponse;

  factory _ListCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_ListCategoryResponse.fromJson;

  @override
  List<DataCategory>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ListCategoryResponseCopyWith<_$_ListCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataCategory _$DataCategoryFromJson(Map<String, dynamic> json) {
  return _DataCategory.fromJson(json);
}

/// @nodoc
mixin _$DataCategory {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get totalPosts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCategoryCopyWith<DataCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCategoryCopyWith<$Res> {
  factory $DataCategoryCopyWith(
          DataCategory value, $Res Function(DataCategory) then) =
      _$DataCategoryCopyWithImpl<$Res>;
  $Res call({String? id, String? name, int? totalPosts});
}

/// @nodoc
class _$DataCategoryCopyWithImpl<$Res> implements $DataCategoryCopyWith<$Res> {
  _$DataCategoryCopyWithImpl(this._value, this._then);

  final DataCategory _value;
  // ignore: unused_field
  final $Res Function(DataCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? totalPosts = freezed,
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
      totalPosts: totalPosts == freezed
          ? _value.totalPosts
          : totalPosts // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataCategoryCopyWith<$Res>
    implements $DataCategoryCopyWith<$Res> {
  factory _$$_DataCategoryCopyWith(
          _$_DataCategory value, $Res Function(_$_DataCategory) then) =
      __$$_DataCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name, int? totalPosts});
}

/// @nodoc
class __$$_DataCategoryCopyWithImpl<$Res>
    extends _$DataCategoryCopyWithImpl<$Res>
    implements _$$_DataCategoryCopyWith<$Res> {
  __$$_DataCategoryCopyWithImpl(
      _$_DataCategory _value, $Res Function(_$_DataCategory) _then)
      : super(_value, (v) => _then(v as _$_DataCategory));

  @override
  _$_DataCategory get _value => super._value as _$_DataCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? totalPosts = freezed,
  }) {
    return _then(_$_DataCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPosts: totalPosts == freezed
          ? _value.totalPosts
          : totalPosts // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataCategory implements _DataCategory {
  const _$_DataCategory({this.id, this.name, this.totalPosts});

  factory _$_DataCategory.fromJson(Map<String, dynamic> json) =>
      _$$_DataCategoryFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? totalPosts;

  @override
  String toString() {
    return 'DataCategory(id: $id, name: $name, totalPosts: $totalPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.totalPosts, totalPosts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(totalPosts));

  @JsonKey(ignore: true)
  @override
  _$$_DataCategoryCopyWith<_$_DataCategory> get copyWith =>
      __$$_DataCategoryCopyWithImpl<_$_DataCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataCategoryToJson(
      this,
    );
  }
}

abstract class _DataCategory implements DataCategory {
  const factory _DataCategory(
      {final String? id,
      final String? name,
      final int? totalPosts}) = _$_DataCategory;

  factory _DataCategory.fromJson(Map<String, dynamic> json) =
      _$_DataCategory.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  int? get totalPosts;
  @override
  @JsonKey(ignore: true)
  _$$_DataCategoryCopyWith<_$_DataCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
