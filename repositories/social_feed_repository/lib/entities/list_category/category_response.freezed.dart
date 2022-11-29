// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return _CategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse {
  List<DataCategory>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
          CategoryResponse value, $Res Function(CategoryResponse) then) =
      _$CategoryResponseCopyWithImpl<$Res>;
  $Res call({List<DataCategory>? data});
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._value, this._then);

  final CategoryResponse _value;
  // ignore: unused_field
  final $Res Function(CategoryResponse) _then;

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
abstract class _$$_CategoryResponseCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$$_CategoryResponseCopyWith(
          _$_CategoryResponse value, $Res Function(_$_CategoryResponse) then) =
      __$$_CategoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<DataCategory>? data});
}

/// @nodoc
class __$$_CategoryResponseCopyWithImpl<$Res>
    extends _$CategoryResponseCopyWithImpl<$Res>
    implements _$$_CategoryResponseCopyWith<$Res> {
  __$$_CategoryResponseCopyWithImpl(
      _$_CategoryResponse _value, $Res Function(_$_CategoryResponse) _then)
      : super(_value, (v) => _then(v as _$_CategoryResponse));

  @override
  _$_CategoryResponse get _value => super._value as _$_CategoryResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CategoryResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryResponse implements _CategoryResponse {
  const _$_CategoryResponse({final List<DataCategory>? data}) : _data = data;

  factory _$_CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryResponseFromJson(json);

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
    return 'CategoryResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryResponseCopyWith<_$_CategoryResponse> get copyWith =>
      __$$_CategoryResponseCopyWithImpl<_$_CategoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryResponseToJson(
      this,
    );
  }
}

abstract class _CategoryResponse implements CategoryResponse {
  const factory _CategoryResponse({final List<DataCategory>? data}) =
      _$_CategoryResponse;

  factory _CategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_CategoryResponse.fromJson;

  @override
  List<DataCategory>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryResponseCopyWith<_$_CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataCategory _$DataCategoryFromJson(Map<String, dynamic> json) {
  return _DataCategory.fromJson(json);
}

/// @nodoc
mixin _$DataCategory {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

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
  $Res call({String? id, String? name});
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
abstract class _$$_DataCategoryCopyWith<$Res>
    implements $DataCategoryCopyWith<$Res> {
  factory _$$_DataCategoryCopyWith(
          _$_DataCategory value, $Res Function(_$_DataCategory) then) =
      __$$_DataCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataCategory implements _DataCategory {
  const _$_DataCategory({this.id, this.name});

  factory _$_DataCategory.fromJson(Map<String, dynamic> json) =>
      _$$_DataCategoryFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'DataCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataCategory &&
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
  const factory _DataCategory({final String? id, final String? name}) =
      _$_DataCategory;

  factory _DataCategory.fromJson(Map<String, dynamic> json) =
      _$_DataCategory.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_DataCategoryCopyWith<_$_DataCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
