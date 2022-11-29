// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_ocr_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOcrDataResponse _$GetOcrDataResponseFromJson(Map<String, dynamic> json) {
  return _GetOcrDataResponse.fromJson(json);
}

/// @nodoc
mixin _$GetOcrDataResponse {
  DataGetOcr? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOcrDataResponseCopyWith<GetOcrDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOcrDataResponseCopyWith<$Res> {
  factory $GetOcrDataResponseCopyWith(
          GetOcrDataResponse value, $Res Function(GetOcrDataResponse) then) =
      _$GetOcrDataResponseCopyWithImpl<$Res>;
  $Res call({DataGetOcr? data});

  $DataGetOcrCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetOcrDataResponseCopyWithImpl<$Res>
    implements $GetOcrDataResponseCopyWith<$Res> {
  _$GetOcrDataResponseCopyWithImpl(this._value, this._then);

  final GetOcrDataResponse _value;
  // ignore: unused_field
  final $Res Function(GetOcrDataResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataGetOcr?,
    ));
  }

  @override
  $DataGetOcrCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataGetOcrCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_GetOcrDataResponseCopyWith<$Res>
    implements $GetOcrDataResponseCopyWith<$Res> {
  factory _$$_GetOcrDataResponseCopyWith(_$_GetOcrDataResponse value,
          $Res Function(_$_GetOcrDataResponse) then) =
      __$$_GetOcrDataResponseCopyWithImpl<$Res>;
  @override
  $Res call({DataGetOcr? data});

  @override
  $DataGetOcrCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_GetOcrDataResponseCopyWithImpl<$Res>
    extends _$GetOcrDataResponseCopyWithImpl<$Res>
    implements _$$_GetOcrDataResponseCopyWith<$Res> {
  __$$_GetOcrDataResponseCopyWithImpl(
      _$_GetOcrDataResponse _value, $Res Function(_$_GetOcrDataResponse) _then)
      : super(_value, (v) => _then(v as _$_GetOcrDataResponse));

  @override
  _$_GetOcrDataResponse get _value => super._value as _$_GetOcrDataResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GetOcrDataResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataGetOcr?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetOcrDataResponse implements _GetOcrDataResponse {
  const _$_GetOcrDataResponse({this.data});

  factory _$_GetOcrDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetOcrDataResponseFromJson(json);

  @override
  final DataGetOcr? data;

  @override
  String toString() {
    return 'GetOcrDataResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOcrDataResponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GetOcrDataResponseCopyWith<_$_GetOcrDataResponse> get copyWith =>
      __$$_GetOcrDataResponseCopyWithImpl<_$_GetOcrDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetOcrDataResponseToJson(this);
  }
}

abstract class _GetOcrDataResponse implements GetOcrDataResponse {
  const factory _GetOcrDataResponse({final DataGetOcr? data}) =
      _$_GetOcrDataResponse;

  factory _GetOcrDataResponse.fromJson(Map<String, dynamic> json) =
      _$_GetOcrDataResponse.fromJson;

  @override
  DataGetOcr? get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetOcrDataResponseCopyWith<_$_GetOcrDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataGetOcr _$DataGetOcrFromJson(Map<String, dynamic> json) {
  return _DataGetOcr.fromJson(json);
}

/// @nodoc
mixin _$DataGetOcr {
  int? get type => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get idNumber => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get dayOfBirth => throw _privateConstructorUsedError;
  String? get domicile => throw _privateConstructorUsedError;
  String? get permanentAddress => throw _privateConstructorUsedError;
  String? get idIssuedDate => throw _privateConstructorUsedError;
  String? get idissuedPlace => throw _privateConstructorUsedError;
  String? get frontImage => throw _privateConstructorUsedError;
  String? get backImage => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  String? get ethnicity => throw _privateConstructorUsedError;
  String? get religion => throw _privateConstructorUsedError;
  String? get maritalStatus => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataGetOcrCopyWith<DataGetOcr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataGetOcrCopyWith<$Res> {
  factory $DataGetOcrCopyWith(
          DataGetOcr value, $Res Function(DataGetOcr) then) =
      _$DataGetOcrCopyWithImpl<$Res>;
  $Res call(
      {int? type,
      String? avatar,
      String? idNumber,
      String? fullName,
      String? dayOfBirth,
      String? domicile,
      String? permanentAddress,
      String? idIssuedDate,
      String? idissuedPlace,
      String? frontImage,
      String? backImage,
      String? gender,
      String? nationality,
      String? ethnicity,
      String? religion,
      String? maritalStatus,
      String? email});
}

/// @nodoc
class _$DataGetOcrCopyWithImpl<$Res> implements $DataGetOcrCopyWith<$Res> {
  _$DataGetOcrCopyWithImpl(this._value, this._then);

  final DataGetOcr _value;
  // ignore: unused_field
  final $Res Function(DataGetOcr) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? avatar = freezed,
    Object? idNumber = freezed,
    Object? fullName = freezed,
    Object? dayOfBirth = freezed,
    Object? domicile = freezed,
    Object? permanentAddress = freezed,
    Object? idIssuedDate = freezed,
    Object? idissuedPlace = freezed,
    Object? frontImage = freezed,
    Object? backImage = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
    Object? ethnicity = freezed,
    Object? religion = freezed,
    Object? maritalStatus = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: idNumber == freezed
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfBirth: dayOfBirth == freezed
          ? _value.dayOfBirth
          : dayOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      domicile: domicile == freezed
          ? _value.domicile
          : domicile // ignore: cast_nullable_to_non_nullable
              as String?,
      permanentAddress: permanentAddress == freezed
          ? _value.permanentAddress
          : permanentAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      idIssuedDate: idIssuedDate == freezed
          ? _value.idIssuedDate
          : idIssuedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      idissuedPlace: idissuedPlace == freezed
          ? _value.idissuedPlace
          : idissuedPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      frontImage: frontImage == freezed
          ? _value.frontImage
          : frontImage // ignore: cast_nullable_to_non_nullable
              as String?,
      backImage: backImage == freezed
          ? _value.backImage
          : backImage // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      ethnicity: ethnicity == freezed
          ? _value.ethnicity
          : ethnicity // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: religion == freezed
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: maritalStatus == freezed
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataGetOcrCopyWith<$Res>
    implements $DataGetOcrCopyWith<$Res> {
  factory _$$_DataGetOcrCopyWith(
          _$_DataGetOcr value, $Res Function(_$_DataGetOcr) then) =
      __$$_DataGetOcrCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? type,
      String? avatar,
      String? idNumber,
      String? fullName,
      String? dayOfBirth,
      String? domicile,
      String? permanentAddress,
      String? idIssuedDate,
      String? idissuedPlace,
      String? frontImage,
      String? backImage,
      String? gender,
      String? nationality,
      String? ethnicity,
      String? religion,
      String? maritalStatus,
      String? email});
}

/// @nodoc
class __$$_DataGetOcrCopyWithImpl<$Res> extends _$DataGetOcrCopyWithImpl<$Res>
    implements _$$_DataGetOcrCopyWith<$Res> {
  __$$_DataGetOcrCopyWithImpl(
      _$_DataGetOcr _value, $Res Function(_$_DataGetOcr) _then)
      : super(_value, (v) => _then(v as _$_DataGetOcr));

  @override
  _$_DataGetOcr get _value => super._value as _$_DataGetOcr;

  @override
  $Res call({
    Object? type = freezed,
    Object? avatar = freezed,
    Object? idNumber = freezed,
    Object? fullName = freezed,
    Object? dayOfBirth = freezed,
    Object? domicile = freezed,
    Object? permanentAddress = freezed,
    Object? idIssuedDate = freezed,
    Object? idissuedPlace = freezed,
    Object? frontImage = freezed,
    Object? backImage = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
    Object? ethnicity = freezed,
    Object? religion = freezed,
    Object? maritalStatus = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_DataGetOcr(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: idNumber == freezed
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfBirth: dayOfBirth == freezed
          ? _value.dayOfBirth
          : dayOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      domicile: domicile == freezed
          ? _value.domicile
          : domicile // ignore: cast_nullable_to_non_nullable
              as String?,
      permanentAddress: permanentAddress == freezed
          ? _value.permanentAddress
          : permanentAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      idIssuedDate: idIssuedDate == freezed
          ? _value.idIssuedDate
          : idIssuedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      idissuedPlace: idissuedPlace == freezed
          ? _value.idissuedPlace
          : idissuedPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      frontImage: frontImage == freezed
          ? _value.frontImage
          : frontImage // ignore: cast_nullable_to_non_nullable
              as String?,
      backImage: backImage == freezed
          ? _value.backImage
          : backImage // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      ethnicity: ethnicity == freezed
          ? _value.ethnicity
          : ethnicity // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: religion == freezed
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: maritalStatus == freezed
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataGetOcr implements _DataGetOcr {
  const _$_DataGetOcr(
      {this.type,
      this.avatar,
      this.idNumber,
      this.fullName,
      this.dayOfBirth,
      this.domicile,
      this.permanentAddress,
      this.idIssuedDate,
      this.idissuedPlace,
      this.frontImage,
      this.backImage,
      this.gender,
      this.nationality,
      this.ethnicity,
      this.religion,
      this.maritalStatus,
      this.email});

  factory _$_DataGetOcr.fromJson(Map<String, dynamic> json) =>
      _$$_DataGetOcrFromJson(json);

  @override
  final int? type;
  @override
  final String? avatar;
  @override
  final String? idNumber;
  @override
  final String? fullName;
  @override
  final String? dayOfBirth;
  @override
  final String? domicile;
  @override
  final String? permanentAddress;
  @override
  final String? idIssuedDate;
  @override
  final String? idissuedPlace;
  @override
  final String? frontImage;
  @override
  final String? backImage;
  @override
  final String? gender;
  @override
  final String? nationality;
  @override
  final String? ethnicity;
  @override
  final String? religion;
  @override
  final String? maritalStatus;
  @override
  final String? email;

  @override
  String toString() {
    return 'DataGetOcr(type: $type, avatar: $avatar, idNumber: $idNumber, fullName: $fullName, dayOfBirth: $dayOfBirth, domicile: $domicile, permanentAddress: $permanentAddress, idIssuedDate: $idIssuedDate, idissuedPlace: $idissuedPlace, frontImage: $frontImage, backImage: $backImage, gender: $gender, nationality: $nationality, ethnicity: $ethnicity, religion: $religion, maritalStatus: $maritalStatus, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataGetOcr &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.idNumber, idNumber) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality()
                .equals(other.dayOfBirth, dayOfBirth) &&
            const DeepCollectionEquality().equals(other.domicile, domicile) &&
            const DeepCollectionEquality()
                .equals(other.permanentAddress, permanentAddress) &&
            const DeepCollectionEquality()
                .equals(other.idIssuedDate, idIssuedDate) &&
            const DeepCollectionEquality()
                .equals(other.idissuedPlace, idissuedPlace) &&
            const DeepCollectionEquality()
                .equals(other.frontImage, frontImage) &&
            const DeepCollectionEquality().equals(other.backImage, backImage) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.nationality, nationality) &&
            const DeepCollectionEquality().equals(other.ethnicity, ethnicity) &&
            const DeepCollectionEquality().equals(other.religion, religion) &&
            const DeepCollectionEquality()
                .equals(other.maritalStatus, maritalStatus) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(idNumber),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(dayOfBirth),
      const DeepCollectionEquality().hash(domicile),
      const DeepCollectionEquality().hash(permanentAddress),
      const DeepCollectionEquality().hash(idIssuedDate),
      const DeepCollectionEquality().hash(idissuedPlace),
      const DeepCollectionEquality().hash(frontImage),
      const DeepCollectionEquality().hash(backImage),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(nationality),
      const DeepCollectionEquality().hash(ethnicity),
      const DeepCollectionEquality().hash(religion),
      const DeepCollectionEquality().hash(maritalStatus),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_DataGetOcrCopyWith<_$_DataGetOcr> get copyWith =>
      __$$_DataGetOcrCopyWithImpl<_$_DataGetOcr>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataGetOcrToJson(this);
  }
}

abstract class _DataGetOcr implements DataGetOcr {
  const factory _DataGetOcr(
      {final int? type,
      final String? avatar,
      final String? idNumber,
      final String? fullName,
      final String? dayOfBirth,
      final String? domicile,
      final String? permanentAddress,
      final String? idIssuedDate,
      final String? idissuedPlace,
      final String? frontImage,
      final String? backImage,
      final String? gender,
      final String? nationality,
      final String? ethnicity,
      final String? religion,
      final String? maritalStatus,
      final String? email}) = _$_DataGetOcr;

  factory _DataGetOcr.fromJson(Map<String, dynamic> json) =
      _$_DataGetOcr.fromJson;

  @override
  int? get type;
  @override
  String? get avatar;
  @override
  String? get idNumber;
  @override
  String? get fullName;
  @override
  String? get dayOfBirth;
  @override
  String? get domicile;
  @override
  String? get permanentAddress;
  @override
  String? get idIssuedDate;
  @override
  String? get idissuedPlace;
  @override
  String? get frontImage;
  @override
  String? get backImage;
  @override
  String? get gender;
  @override
  String? get nationality;
  @override
  String? get ethnicity;
  @override
  String? get religion;
  @override
  String? get maritalStatus;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_DataGetOcrCopyWith<_$_DataGetOcr> get copyWith =>
      throw _privateConstructorUsedError;
}
