// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recent_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecentSearchResponse _$RecentSearchResponseFromJson(Map<String, dynamic> json) {
  return _RecentSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$RecentSearchResponse {
  List<DataRecentSearch>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentSearchResponseCopyWith<RecentSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentSearchResponseCopyWith<$Res> {
  factory $RecentSearchResponseCopyWith(RecentSearchResponse value,
          $Res Function(RecentSearchResponse) then) =
      _$RecentSearchResponseCopyWithImpl<$Res>;
  $Res call({List<DataRecentSearch>? data});
}

/// @nodoc
class _$RecentSearchResponseCopyWithImpl<$Res>
    implements $RecentSearchResponseCopyWith<$Res> {
  _$RecentSearchResponseCopyWithImpl(this._value, this._then);

  final RecentSearchResponse _value;
  // ignore: unused_field
  final $Res Function(RecentSearchResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataRecentSearch>?,
    ));
  }
}

/// @nodoc
abstract class _$$_RecentSearchResponseCopyWith<$Res>
    implements $RecentSearchResponseCopyWith<$Res> {
  factory _$$_RecentSearchResponseCopyWith(_$_RecentSearchResponse value,
          $Res Function(_$_RecentSearchResponse) then) =
      __$$_RecentSearchResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<DataRecentSearch>? data});
}

/// @nodoc
class __$$_RecentSearchResponseCopyWithImpl<$Res>
    extends _$RecentSearchResponseCopyWithImpl<$Res>
    implements _$$_RecentSearchResponseCopyWith<$Res> {
  __$$_RecentSearchResponseCopyWithImpl(_$_RecentSearchResponse _value,
      $Res Function(_$_RecentSearchResponse) _then)
      : super(_value, (v) => _then(v as _$_RecentSearchResponse));

  @override
  _$_RecentSearchResponse get _value => super._value as _$_RecentSearchResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_RecentSearchResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataRecentSearch>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecentSearchResponse implements _RecentSearchResponse {
  const _$_RecentSearchResponse({final List<DataRecentSearch>? data})
      : _data = data;

  factory _$_RecentSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecentSearchResponseFromJson(json);

  final List<DataRecentSearch>? _data;
  @override
  List<DataRecentSearch>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecentSearchResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentSearchResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_RecentSearchResponseCopyWith<_$_RecentSearchResponse> get copyWith =>
      __$$_RecentSearchResponseCopyWithImpl<_$_RecentSearchResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentSearchResponseToJson(
      this,
    );
  }
}

abstract class _RecentSearchResponse implements RecentSearchResponse {
  const factory _RecentSearchResponse({final List<DataRecentSearch>? data}) =
      _$_RecentSearchResponse;

  factory _RecentSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_RecentSearchResponse.fromJson;

  @override
  List<DataRecentSearch>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_RecentSearchResponseCopyWith<_$_RecentSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataRecentSearch _$DataRecentSearchFromJson(Map<String, dynamic> json) {
  return _DataRecentSearch.fromJson(json);
}

/// @nodoc
mixin _$DataRecentSearch {
  String? get keyword => throw _privateConstructorUsedError;
  String? get keywordType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataRecentSearchCopyWith<DataRecentSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRecentSearchCopyWith<$Res> {
  factory $DataRecentSearchCopyWith(
          DataRecentSearch value, $Res Function(DataRecentSearch) then) =
      _$DataRecentSearchCopyWithImpl<$Res>;
  $Res call({String? keyword, String? keywordType});
}

/// @nodoc
class _$DataRecentSearchCopyWithImpl<$Res>
    implements $DataRecentSearchCopyWith<$Res> {
  _$DataRecentSearchCopyWithImpl(this._value, this._then);

  final DataRecentSearch _value;
  // ignore: unused_field
  final $Res Function(DataRecentSearch) _then;

  @override
  $Res call({
    Object? keyword = freezed,
    Object? keywordType = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      keywordType: keywordType == freezed
          ? _value.keywordType
          : keywordType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataRecentSearchCopyWith<$Res>
    implements $DataRecentSearchCopyWith<$Res> {
  factory _$$_DataRecentSearchCopyWith(
          _$_DataRecentSearch value, $Res Function(_$_DataRecentSearch) then) =
      __$$_DataRecentSearchCopyWithImpl<$Res>;
  @override
  $Res call({String? keyword, String? keywordType});
}

/// @nodoc
class __$$_DataRecentSearchCopyWithImpl<$Res>
    extends _$DataRecentSearchCopyWithImpl<$Res>
    implements _$$_DataRecentSearchCopyWith<$Res> {
  __$$_DataRecentSearchCopyWithImpl(
      _$_DataRecentSearch _value, $Res Function(_$_DataRecentSearch) _then)
      : super(_value, (v) => _then(v as _$_DataRecentSearch));

  @override
  _$_DataRecentSearch get _value => super._value as _$_DataRecentSearch;

  @override
  $Res call({
    Object? keyword = freezed,
    Object? keywordType = freezed,
  }) {
    return _then(_$_DataRecentSearch(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      keywordType: keywordType == freezed
          ? _value.keywordType
          : keywordType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataRecentSearch implements _DataRecentSearch {
  const _$_DataRecentSearch({this.keyword, this.keywordType});

  factory _$_DataRecentSearch.fromJson(Map<String, dynamic> json) =>
      _$$_DataRecentSearchFromJson(json);

  @override
  final String? keyword;
  @override
  final String? keywordType;

  @override
  String toString() {
    return 'DataRecentSearch(keyword: $keyword, keywordType: $keywordType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataRecentSearch &&
            const DeepCollectionEquality().equals(other.keyword, keyword) &&
            const DeepCollectionEquality()
                .equals(other.keywordType, keywordType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(keyword),
      const DeepCollectionEquality().hash(keywordType));

  @JsonKey(ignore: true)
  @override
  _$$_DataRecentSearchCopyWith<_$_DataRecentSearch> get copyWith =>
      __$$_DataRecentSearchCopyWithImpl<_$_DataRecentSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataRecentSearchToJson(
      this,
    );
  }
}

abstract class _DataRecentSearch implements DataRecentSearch {
  const factory _DataRecentSearch(
      {final String? keyword, final String? keywordType}) = _$_DataRecentSearch;

  factory _DataRecentSearch.fromJson(Map<String, dynamic> json) =
      _$_DataRecentSearch.fromJson;

  @override
  String? get keyword;
  @override
  String? get keywordType;
  @override
  @JsonKey(ignore: true)
  _$$_DataRecentSearchCopyWith<_$_DataRecentSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
