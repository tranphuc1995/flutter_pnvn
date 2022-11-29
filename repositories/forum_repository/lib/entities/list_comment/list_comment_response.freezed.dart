// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListCommentResponse _$ListCommentResponseFromJson(Map<String, dynamic> json) {
  return _ListCommentResponse.fromJson(json);
}

/// @nodoc
mixin _$ListCommentResponse {
  List<DataListComment>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListCommentResponseCopyWith<ListCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCommentResponseCopyWith<$Res> {
  factory $ListCommentResponseCopyWith(
          ListCommentResponse value, $Res Function(ListCommentResponse) then) =
      _$ListCommentResponseCopyWithImpl<$Res>;
  $Res call({List<DataListComment>? data});
}

/// @nodoc
class _$ListCommentResponseCopyWithImpl<$Res>
    implements $ListCommentResponseCopyWith<$Res> {
  _$ListCommentResponseCopyWithImpl(this._value, this._then);

  final ListCommentResponse _value;
  // ignore: unused_field
  final $Res Function(ListCommentResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataListComment>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListCommentResponseCopyWith<$Res>
    implements $ListCommentResponseCopyWith<$Res> {
  factory _$$_ListCommentResponseCopyWith(_$_ListCommentResponse value,
          $Res Function(_$_ListCommentResponse) then) =
      __$$_ListCommentResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<DataListComment>? data});
}

/// @nodoc
class __$$_ListCommentResponseCopyWithImpl<$Res>
    extends _$ListCommentResponseCopyWithImpl<$Res>
    implements _$$_ListCommentResponseCopyWith<$Res> {
  __$$_ListCommentResponseCopyWithImpl(_$_ListCommentResponse _value,
      $Res Function(_$_ListCommentResponse) _then)
      : super(_value, (v) => _then(v as _$_ListCommentResponse));

  @override
  _$_ListCommentResponse get _value => super._value as _$_ListCommentResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ListCommentResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataListComment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListCommentResponse implements _ListCommentResponse {
  const _$_ListCommentResponse({final List<DataListComment>? data})
      : _data = data;

  factory _$_ListCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListCommentResponseFromJson(json);

  final List<DataListComment>? _data;
  @override
  List<DataListComment>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListCommentResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListCommentResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_ListCommentResponseCopyWith<_$_ListCommentResponse> get copyWith =>
      __$$_ListCommentResponseCopyWithImpl<_$_ListCommentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListCommentResponseToJson(
      this,
    );
  }
}

abstract class _ListCommentResponse implements ListCommentResponse {
  const factory _ListCommentResponse({final List<DataListComment>? data}) =
      _$_ListCommentResponse;

  factory _ListCommentResponse.fromJson(Map<String, dynamic> json) =
      _$_ListCommentResponse.fromJson;

  @override
  List<DataListComment>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ListCommentResponseCopyWith<_$_ListCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataListComment _$DataListCommentFromJson(Map<String, dynamic> json) {
  return _DataListComment.fromJson(json);
}

/// @nodoc
mixin _$DataListComment {
  String? get id => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataListCommentCopyWith<DataListComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataListCommentCopyWith<$Res> {
  factory $DataListCommentCopyWith(
          DataListComment value, $Res Function(DataListComment) then) =
      _$DataListCommentCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? comment,
      String? nickname,
      String? avatar,
      String? createdDate});
}

/// @nodoc
class _$DataListCommentCopyWithImpl<$Res>
    implements $DataListCommentCopyWith<$Res> {
  _$DataListCommentCopyWithImpl(this._value, this._then);

  final DataListComment _value;
  // ignore: unused_field
  final $Res Function(DataListComment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? comment = freezed,
    Object? nickname = freezed,
    Object? avatar = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataListCommentCopyWith<$Res>
    implements $DataListCommentCopyWith<$Res> {
  factory _$$_DataListCommentCopyWith(
          _$_DataListComment value, $Res Function(_$_DataListComment) then) =
      __$$_DataListCommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? comment,
      String? nickname,
      String? avatar,
      String? createdDate});
}

/// @nodoc
class __$$_DataListCommentCopyWithImpl<$Res>
    extends _$DataListCommentCopyWithImpl<$Res>
    implements _$$_DataListCommentCopyWith<$Res> {
  __$$_DataListCommentCopyWithImpl(
      _$_DataListComment _value, $Res Function(_$_DataListComment) _then)
      : super(_value, (v) => _then(v as _$_DataListComment));

  @override
  _$_DataListComment get _value => super._value as _$_DataListComment;

  @override
  $Res call({
    Object? id = freezed,
    Object? comment = freezed,
    Object? nickname = freezed,
    Object? avatar = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_$_DataListComment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataListComment implements _DataListComment {
  const _$_DataListComment(
      {this.id, this.comment, this.nickname, this.avatar, this.createdDate});

  factory _$_DataListComment.fromJson(Map<String, dynamic> json) =>
      _$$_DataListCommentFromJson(json);

  @override
  final String? id;
  @override
  final String? comment;
  @override
  final String? nickname;
  @override
  final String? avatar;
  @override
  final String? createdDate;

  @override
  String toString() {
    return 'DataListComment(id: $id, comment: $comment, nickname: $nickname, avatar: $avatar, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataListComment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality()
                .equals(other.createdDate, createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(createdDate));

  @JsonKey(ignore: true)
  @override
  _$$_DataListCommentCopyWith<_$_DataListComment> get copyWith =>
      __$$_DataListCommentCopyWithImpl<_$_DataListComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataListCommentToJson(
      this,
    );
  }
}

abstract class _DataListComment implements DataListComment {
  const factory _DataListComment(
      {final String? id,
      final String? comment,
      final String? nickname,
      final String? avatar,
      final String? createdDate}) = _$_DataListComment;

  factory _DataListComment.fromJson(Map<String, dynamic> json) =
      _$_DataListComment.fromJson;

  @override
  String? get id;
  @override
  String? get comment;
  @override
  String? get nickname;
  @override
  String? get avatar;
  @override
  String? get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$_DataListCommentCopyWith<_$_DataListComment> get copyWith =>
      throw _privateConstructorUsedError;
}
