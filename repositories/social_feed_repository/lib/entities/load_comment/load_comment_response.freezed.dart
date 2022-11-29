// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'load_comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoadCommentResponse _$LoadCommentResponseFromJson(Map<String, dynamic> json) {
  return _LoadCommentResponse.fromJson(json);
}

/// @nodoc
mixin _$LoadCommentResponse {
  List<DataLoadComment>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadCommentResponseCopyWith<LoadCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadCommentResponseCopyWith<$Res> {
  factory $LoadCommentResponseCopyWith(
          LoadCommentResponse value, $Res Function(LoadCommentResponse) then) =
      _$LoadCommentResponseCopyWithImpl<$Res>;
  $Res call({List<DataLoadComment>? data});
}

/// @nodoc
class _$LoadCommentResponseCopyWithImpl<$Res>
    implements $LoadCommentResponseCopyWith<$Res> {
  _$LoadCommentResponseCopyWithImpl(this._value, this._then);

  final LoadCommentResponse _value;
  // ignore: unused_field
  final $Res Function(LoadCommentResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataLoadComment>?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoadCommentResponseCopyWith<$Res>
    implements $LoadCommentResponseCopyWith<$Res> {
  factory _$$_LoadCommentResponseCopyWith(_$_LoadCommentResponse value,
          $Res Function(_$_LoadCommentResponse) then) =
      __$$_LoadCommentResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<DataLoadComment>? data});
}

/// @nodoc
class __$$_LoadCommentResponseCopyWithImpl<$Res>
    extends _$LoadCommentResponseCopyWithImpl<$Res>
    implements _$$_LoadCommentResponseCopyWith<$Res> {
  __$$_LoadCommentResponseCopyWithImpl(_$_LoadCommentResponse _value,
      $Res Function(_$_LoadCommentResponse) _then)
      : super(_value, (v) => _then(v as _$_LoadCommentResponse));

  @override
  _$_LoadCommentResponse get _value => super._value as _$_LoadCommentResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_LoadCommentResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataLoadComment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoadCommentResponse implements _LoadCommentResponse {
  const _$_LoadCommentResponse({final List<DataLoadComment>? data})
      : _data = data;

  factory _$_LoadCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoadCommentResponseFromJson(json);

  final List<DataLoadComment>? _data;
  @override
  List<DataLoadComment>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LoadCommentResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadCommentResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_LoadCommentResponseCopyWith<_$_LoadCommentResponse> get copyWith =>
      __$$_LoadCommentResponseCopyWithImpl<_$_LoadCommentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadCommentResponseToJson(
      this,
    );
  }
}

abstract class _LoadCommentResponse implements LoadCommentResponse {
  const factory _LoadCommentResponse({final List<DataLoadComment>? data}) =
      _$_LoadCommentResponse;

  factory _LoadCommentResponse.fromJson(Map<String, dynamic> json) =
      _$_LoadCommentResponse.fromJson;

  @override
  List<DataLoadComment>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadCommentResponseCopyWith<_$_LoadCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataLoadComment _$DataLoadCommentFromJson(Map<String, dynamic> json) {
  return _DataLoadComment.fromJson(json);
}

/// @nodoc
mixin _$DataLoadComment {
  String? get id => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get createdDate => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataLoadCommentCopyWith<DataLoadComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataLoadCommentCopyWith<$Res> {
  factory $DataLoadCommentCopyWith(
          DataLoadComment value, $Res Function(DataLoadComment) then) =
      _$DataLoadCommentCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? nickName,
      String? avatar,
      String? createdDate,
      String? comment});
}

/// @nodoc
class _$DataLoadCommentCopyWithImpl<$Res>
    implements $DataLoadCommentCopyWith<$Res> {
  _$DataLoadCommentCopyWithImpl(this._value, this._then);

  final DataLoadComment _value;
  // ignore: unused_field
  final $Res Function(DataLoadComment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nickName = freezed,
    Object? avatar = freezed,
    Object? createdDate = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataLoadCommentCopyWith<$Res>
    implements $DataLoadCommentCopyWith<$Res> {
  factory _$$_DataLoadCommentCopyWith(
          _$_DataLoadComment value, $Res Function(_$_DataLoadComment) then) =
      __$$_DataLoadCommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? nickName,
      String? avatar,
      String? createdDate,
      String? comment});
}

/// @nodoc
class __$$_DataLoadCommentCopyWithImpl<$Res>
    extends _$DataLoadCommentCopyWithImpl<$Res>
    implements _$$_DataLoadCommentCopyWith<$Res> {
  __$$_DataLoadCommentCopyWithImpl(
      _$_DataLoadComment _value, $Res Function(_$_DataLoadComment) _then)
      : super(_value, (v) => _then(v as _$_DataLoadComment));

  @override
  _$_DataLoadComment get _value => super._value as _$_DataLoadComment;

  @override
  $Res call({
    Object? id = freezed,
    Object? nickName = freezed,
    Object? avatar = freezed,
    Object? createdDate = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$_DataLoadComment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataLoadComment implements _DataLoadComment {
  const _$_DataLoadComment(
      {this.id, this.nickName, this.avatar, this.createdDate, this.comment});

  factory _$_DataLoadComment.fromJson(Map<String, dynamic> json) =>
      _$$_DataLoadCommentFromJson(json);

  @override
  final String? id;
  @override
  final String? nickName;
  @override
  final String? avatar;
  @override
  final String? createdDate;
  @override
  final String? comment;

  @override
  String toString() {
    return 'DataLoadComment(id: $id, nickName: $nickName, avatar: $avatar, createdDate: $createdDate, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataLoadComment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nickName, nickName) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality()
                .equals(other.createdDate, createdDate) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nickName),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(createdDate),
      const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
  _$$_DataLoadCommentCopyWith<_$_DataLoadComment> get copyWith =>
      __$$_DataLoadCommentCopyWithImpl<_$_DataLoadComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataLoadCommentToJson(
      this,
    );
  }
}

abstract class _DataLoadComment implements DataLoadComment {
  const factory _DataLoadComment(
      {final String? id,
      final String? nickName,
      final String? avatar,
      final String? createdDate,
      final String? comment}) = _$_DataLoadComment;

  factory _DataLoadComment.fromJson(Map<String, dynamic> json) =
      _$_DataLoadComment.fromJson;

  @override
  String? get id;
  @override
  String? get nickName;
  @override
  String? get avatar;
  @override
  String? get createdDate;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$_DataLoadCommentCopyWith<_$_DataLoadComment> get copyWith =>
      throw _privateConstructorUsedError;
}
