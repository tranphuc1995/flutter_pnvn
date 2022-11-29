// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ocr_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OcrResponse _$OcrResponseFromJson(Map<String, dynamic> json) {
  return _OcrResponse.fromJson(json);
}

/// @nodoc
mixin _$OcrResponse {
  String? get statusCode => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OcrResponseCopyWith<OcrResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OcrResponseCopyWith<$Res> {
  factory $OcrResponseCopyWith(
          OcrResponse value, $Res Function(OcrResponse) then) =
      _$OcrResponseCopyWithImpl<$Res>;
  $Res call({String? statusCode, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$OcrResponseCopyWithImpl<$Res> implements $OcrResponseCopyWith<$Res> {
  _$OcrResponseCopyWithImpl(this._value, this._then);

  final OcrResponse _value;
  // ignore: unused_field
  final $Res Function(OcrResponse) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }

  @override
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_OcrResponseCopyWith<$Res>
    implements $OcrResponseCopyWith<$Res> {
  factory _$$_OcrResponseCopyWith(
          _$_OcrResponse value, $Res Function(_$_OcrResponse) then) =
      __$$_OcrResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? statusCode, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_OcrResponseCopyWithImpl<$Res> extends _$OcrResponseCopyWithImpl<$Res>
    implements _$$_OcrResponseCopyWith<$Res> {
  __$$_OcrResponseCopyWithImpl(
      _$_OcrResponse _value, $Res Function(_$_OcrResponse) _then)
      : super(_value, (v) => _then(v as _$_OcrResponse));

  @override
  _$_OcrResponse get _value => super._value as _$_OcrResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_OcrResponse(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OcrResponse implements _OcrResponse {
  const _$_OcrResponse({this.statusCode, this.error, this.result});

  factory _$_OcrResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OcrResponseFromJson(json);

  @override
  final String? statusCode;
  @override
  final String? error;
  @override
  final Result? result;

  @override
  String toString() {
    return 'OcrResponse(statusCode: $statusCode, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OcrResponse &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_OcrResponseCopyWith<_$_OcrResponse> get copyWith =>
      __$$_OcrResponseCopyWithImpl<_$_OcrResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OcrResponseToJson(this);
  }
}

abstract class _OcrResponse implements OcrResponse {
  const factory _OcrResponse(
      {final String? statusCode,
      final String? error,
      final Result? result}) = _$_OcrResponse;

  factory _OcrResponse.fromJson(Map<String, dynamic> json) =
      _$_OcrResponse.fromJson;

  @override
  String? get statusCode;
  @override
  String? get error;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$_OcrResponseCopyWith<_$_OcrResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<Detail>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call({List<Detail>? details});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Detail>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  $Res call({List<Detail>? details});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, (v) => _then(v as _$_Result));

  @override
  _$_Result get _value => super._value as _$_Result;

  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$_Result(
      details: details == freezed
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Detail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({final List<Detail>? details}) : _details = details;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  final List<Detail>? _details;
  @override
  List<Detail>? get details {
    final value = _details;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(this);
  }
}

abstract class _Result implements Result {
  const factory _Result({final List<Detail>? details}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  List<Detail>? get details;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return _Detail.fromJson(json);
}

/// @nodoc
mixin _$Detail {
  FieldsExtracted? get fieldsExtracted => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res>;
  $Res call({FieldsExtracted? fieldsExtracted, String? type});

  $FieldsExtractedCopyWith<$Res>? get fieldsExtracted;
}

/// @nodoc
class _$DetailCopyWithImpl<$Res> implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  final Detail _value;
  // ignore: unused_field
  final $Res Function(Detail) _then;

  @override
  $Res call({
    Object? fieldsExtracted = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      fieldsExtracted: fieldsExtracted == freezed
          ? _value.fieldsExtracted
          : fieldsExtracted // ignore: cast_nullable_to_non_nullable
              as FieldsExtracted?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $FieldsExtractedCopyWith<$Res>? get fieldsExtracted {
    if (_value.fieldsExtracted == null) {
      return null;
    }

    return $FieldsExtractedCopyWith<$Res>(_value.fieldsExtracted!, (value) {
      return _then(_value.copyWith(fieldsExtracted: value));
    });
  }
}

/// @nodoc
abstract class _$$_DetailCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$$_DetailCopyWith(_$_Detail value, $Res Function(_$_Detail) then) =
      __$$_DetailCopyWithImpl<$Res>;
  @override
  $Res call({FieldsExtracted? fieldsExtracted, String? type});

  @override
  $FieldsExtractedCopyWith<$Res>? get fieldsExtracted;
}

/// @nodoc
class __$$_DetailCopyWithImpl<$Res> extends _$DetailCopyWithImpl<$Res>
    implements _$$_DetailCopyWith<$Res> {
  __$$_DetailCopyWithImpl(_$_Detail _value, $Res Function(_$_Detail) _then)
      : super(_value, (v) => _then(v as _$_Detail));

  @override
  _$_Detail get _value => super._value as _$_Detail;

  @override
  $Res call({
    Object? fieldsExtracted = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Detail(
      fieldsExtracted: fieldsExtracted == freezed
          ? _value.fieldsExtracted
          : fieldsExtracted // ignore: cast_nullable_to_non_nullable
              as FieldsExtracted?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Detail implements _Detail {
  const _$_Detail({this.fieldsExtracted, this.type});

  factory _$_Detail.fromJson(Map<String, dynamic> json) =>
      _$$_DetailFromJson(json);

  @override
  final FieldsExtracted? fieldsExtracted;
  @override
  final String? type;

  @override
  String toString() {
    return 'Detail(fieldsExtracted: $fieldsExtracted, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Detail &&
            const DeepCollectionEquality()
                .equals(other.fieldsExtracted, fieldsExtracted) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fieldsExtracted),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_DetailCopyWith<_$_Detail> get copyWith =>
      __$$_DetailCopyWithImpl<_$_Detail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailToJson(this);
  }
}

abstract class _Detail implements Detail {
  const factory _Detail(
      {final FieldsExtracted? fieldsExtracted, final String? type}) = _$_Detail;

  factory _Detail.fromJson(Map<String, dynamic> json) = _$_Detail.fromJson;

  @override
  FieldsExtracted? get fieldsExtracted;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_DetailCopyWith<_$_Detail> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldsExtracted _$FieldsExtractedFromJson(Map<String, dynamic> json) {
  return _FieldsExtracted.fromJson(json);
}

/// @nodoc
mixin _$FieldsExtracted {
  Province? get province => throw _privateConstructorUsedError;
  IdNumber? get idNumber => throw _privateConstructorUsedError;
  Name? get name => throw _privateConstructorUsedError;
  Dob? get dob => throw _privateConstructorUsedError;
  HomeTown? get homeTown => throw _privateConstructorUsedError;
  PermanentAddress? get permanentAddress => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  Doe? get doe => throw _privateConstructorUsedError;
  Nationality? get nationality => throw _privateConstructorUsedError;
  Doi? get doi => throw _privateConstructorUsedError;
  PlaceOfIssue? get placeOfIssue => throw _privateConstructorUsedError;
  Ethnicity? get ethnicity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldsExtractedCopyWith<FieldsExtracted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsExtractedCopyWith<$Res> {
  factory $FieldsExtractedCopyWith(
          FieldsExtracted value, $Res Function(FieldsExtracted) then) =
      _$FieldsExtractedCopyWithImpl<$Res>;
  $Res call(
      {Province? province,
      IdNumber? idNumber,
      Name? name,
      Dob? dob,
      HomeTown? homeTown,
      PermanentAddress? permanentAddress,
      Gender? gender,
      Doe? doe,
      Nationality? nationality,
      Doi? doi,
      PlaceOfIssue? placeOfIssue,
      Ethnicity? ethnicity});

  $ProvinceCopyWith<$Res>? get province;
  $IdNumberCopyWith<$Res>? get idNumber;
  $NameCopyWith<$Res>? get name;
  $DobCopyWith<$Res>? get dob;
  $HomeTownCopyWith<$Res>? get homeTown;
  $PermanentAddressCopyWith<$Res>? get permanentAddress;
  $GenderCopyWith<$Res>? get gender;
  $DoeCopyWith<$Res>? get doe;
  $NationalityCopyWith<$Res>? get nationality;
  $DoiCopyWith<$Res>? get doi;
  $PlaceOfIssueCopyWith<$Res>? get placeOfIssue;
  $EthnicityCopyWith<$Res>? get ethnicity;
}

/// @nodoc
class _$FieldsExtractedCopyWithImpl<$Res>
    implements $FieldsExtractedCopyWith<$Res> {
  _$FieldsExtractedCopyWithImpl(this._value, this._then);

  final FieldsExtracted _value;
  // ignore: unused_field
  final $Res Function(FieldsExtracted) _then;

  @override
  $Res call({
    Object? province = freezed,
    Object? idNumber = freezed,
    Object? name = freezed,
    Object? dob = freezed,
    Object? homeTown = freezed,
    Object? permanentAddress = freezed,
    Object? gender = freezed,
    Object? doe = freezed,
    Object? nationality = freezed,
    Object? doi = freezed,
    Object? placeOfIssue = freezed,
    Object? ethnicity = freezed,
  }) {
    return _then(_value.copyWith(
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Province?,
      idNumber: idNumber == freezed
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as IdNumber?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as Dob?,
      homeTown: homeTown == freezed
          ? _value.homeTown
          : homeTown // ignore: cast_nullable_to_non_nullable
              as HomeTown?,
      permanentAddress: permanentAddress == freezed
          ? _value.permanentAddress
          : permanentAddress // ignore: cast_nullable_to_non_nullable
              as PermanentAddress?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      doe: doe == freezed
          ? _value.doe
          : doe // ignore: cast_nullable_to_non_nullable
              as Doe?,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as Nationality?,
      doi: doi == freezed
          ? _value.doi
          : doi // ignore: cast_nullable_to_non_nullable
              as Doi?,
      placeOfIssue: placeOfIssue == freezed
          ? _value.placeOfIssue
          : placeOfIssue // ignore: cast_nullable_to_non_nullable
              as PlaceOfIssue?,
      ethnicity: ethnicity == freezed
          ? _value.ethnicity
          : ethnicity // ignore: cast_nullable_to_non_nullable
              as Ethnicity?,
    ));
  }

  @override
  $ProvinceCopyWith<$Res>? get province {
    if (_value.province == null) {
      return null;
    }

    return $ProvinceCopyWith<$Res>(_value.province!, (value) {
      return _then(_value.copyWith(province: value));
    });
  }

  @override
  $IdNumberCopyWith<$Res>? get idNumber {
    if (_value.idNumber == null) {
      return null;
    }

    return $IdNumberCopyWith<$Res>(_value.idNumber!, (value) {
      return _then(_value.copyWith(idNumber: value));
    });
  }

  @override
  $NameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $DobCopyWith<$Res>? get dob {
    if (_value.dob == null) {
      return null;
    }

    return $DobCopyWith<$Res>(_value.dob!, (value) {
      return _then(_value.copyWith(dob: value));
    });
  }

  @override
  $HomeTownCopyWith<$Res>? get homeTown {
    if (_value.homeTown == null) {
      return null;
    }

    return $HomeTownCopyWith<$Res>(_value.homeTown!, (value) {
      return _then(_value.copyWith(homeTown: value));
    });
  }

  @override
  $PermanentAddressCopyWith<$Res>? get permanentAddress {
    if (_value.permanentAddress == null) {
      return null;
    }

    return $PermanentAddressCopyWith<$Res>(_value.permanentAddress!, (value) {
      return _then(_value.copyWith(permanentAddress: value));
    });
  }

  @override
  $GenderCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $GenderCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value));
    });
  }

  @override
  $DoeCopyWith<$Res>? get doe {
    if (_value.doe == null) {
      return null;
    }

    return $DoeCopyWith<$Res>(_value.doe!, (value) {
      return _then(_value.copyWith(doe: value));
    });
  }

  @override
  $NationalityCopyWith<$Res>? get nationality {
    if (_value.nationality == null) {
      return null;
    }

    return $NationalityCopyWith<$Res>(_value.nationality!, (value) {
      return _then(_value.copyWith(nationality: value));
    });
  }

  @override
  $DoiCopyWith<$Res>? get doi {
    if (_value.doi == null) {
      return null;
    }

    return $DoiCopyWith<$Res>(_value.doi!, (value) {
      return _then(_value.copyWith(doi: value));
    });
  }

  @override
  $PlaceOfIssueCopyWith<$Res>? get placeOfIssue {
    if (_value.placeOfIssue == null) {
      return null;
    }

    return $PlaceOfIssueCopyWith<$Res>(_value.placeOfIssue!, (value) {
      return _then(_value.copyWith(placeOfIssue: value));
    });
  }

  @override
  $EthnicityCopyWith<$Res>? get ethnicity {
    if (_value.ethnicity == null) {
      return null;
    }

    return $EthnicityCopyWith<$Res>(_value.ethnicity!, (value) {
      return _then(_value.copyWith(ethnicity: value));
    });
  }
}

/// @nodoc
abstract class _$$_FieldsExtractedCopyWith<$Res>
    implements $FieldsExtractedCopyWith<$Res> {
  factory _$$_FieldsExtractedCopyWith(
          _$_FieldsExtracted value, $Res Function(_$_FieldsExtracted) then) =
      __$$_FieldsExtractedCopyWithImpl<$Res>;
  @override
  $Res call(
      {Province? province,
      IdNumber? idNumber,
      Name? name,
      Dob? dob,
      HomeTown? homeTown,
      PermanentAddress? permanentAddress,
      Gender? gender,
      Doe? doe,
      Nationality? nationality,
      Doi? doi,
      PlaceOfIssue? placeOfIssue,
      Ethnicity? ethnicity});

  @override
  $ProvinceCopyWith<$Res>? get province;
  @override
  $IdNumberCopyWith<$Res>? get idNumber;
  @override
  $NameCopyWith<$Res>? get name;
  @override
  $DobCopyWith<$Res>? get dob;
  @override
  $HomeTownCopyWith<$Res>? get homeTown;
  @override
  $PermanentAddressCopyWith<$Res>? get permanentAddress;
  @override
  $GenderCopyWith<$Res>? get gender;
  @override
  $DoeCopyWith<$Res>? get doe;
  @override
  $NationalityCopyWith<$Res>? get nationality;
  @override
  $DoiCopyWith<$Res>? get doi;
  @override
  $PlaceOfIssueCopyWith<$Res>? get placeOfIssue;
  @override
  $EthnicityCopyWith<$Res>? get ethnicity;
}

/// @nodoc
class __$$_FieldsExtractedCopyWithImpl<$Res>
    extends _$FieldsExtractedCopyWithImpl<$Res>
    implements _$$_FieldsExtractedCopyWith<$Res> {
  __$$_FieldsExtractedCopyWithImpl(
      _$_FieldsExtracted _value, $Res Function(_$_FieldsExtracted) _then)
      : super(_value, (v) => _then(v as _$_FieldsExtracted));

  @override
  _$_FieldsExtracted get _value => super._value as _$_FieldsExtracted;

  @override
  $Res call({
    Object? province = freezed,
    Object? idNumber = freezed,
    Object? name = freezed,
    Object? dob = freezed,
    Object? homeTown = freezed,
    Object? permanentAddress = freezed,
    Object? gender = freezed,
    Object? doe = freezed,
    Object? nationality = freezed,
    Object? doi = freezed,
    Object? placeOfIssue = freezed,
    Object? ethnicity = freezed,
  }) {
    return _then(_$_FieldsExtracted(
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Province?,
      idNumber: idNumber == freezed
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as IdNumber?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as Dob?,
      homeTown: homeTown == freezed
          ? _value.homeTown
          : homeTown // ignore: cast_nullable_to_non_nullable
              as HomeTown?,
      permanentAddress: permanentAddress == freezed
          ? _value.permanentAddress
          : permanentAddress // ignore: cast_nullable_to_non_nullable
              as PermanentAddress?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      doe: doe == freezed
          ? _value.doe
          : doe // ignore: cast_nullable_to_non_nullable
              as Doe?,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as Nationality?,
      doi: doi == freezed
          ? _value.doi
          : doi // ignore: cast_nullable_to_non_nullable
              as Doi?,
      placeOfIssue: placeOfIssue == freezed
          ? _value.placeOfIssue
          : placeOfIssue // ignore: cast_nullable_to_non_nullable
              as PlaceOfIssue?,
      ethnicity: ethnicity == freezed
          ? _value.ethnicity
          : ethnicity // ignore: cast_nullable_to_non_nullable
              as Ethnicity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FieldsExtracted implements _FieldsExtracted {
  const _$_FieldsExtracted(
      {this.province,
      this.idNumber,
      this.name,
      this.dob,
      this.homeTown,
      this.permanentAddress,
      this.gender,
      this.doe,
      this.nationality,
      this.doi,
      this.placeOfIssue,
      this.ethnicity});

  factory _$_FieldsExtracted.fromJson(Map<String, dynamic> json) =>
      _$$_FieldsExtractedFromJson(json);

  @override
  final Province? province;
  @override
  final IdNumber? idNumber;
  @override
  final Name? name;
  @override
  final Dob? dob;
  @override
  final HomeTown? homeTown;
  @override
  final PermanentAddress? permanentAddress;
  @override
  final Gender? gender;
  @override
  final Doe? doe;
  @override
  final Nationality? nationality;
  @override
  final Doi? doi;
  @override
  final PlaceOfIssue? placeOfIssue;
  @override
  final Ethnicity? ethnicity;

  @override
  String toString() {
    return 'FieldsExtracted(province: $province, idNumber: $idNumber, name: $name, dob: $dob, homeTown: $homeTown, permanentAddress: $permanentAddress, gender: $gender, doe: $doe, nationality: $nationality, doi: $doi, placeOfIssue: $placeOfIssue, ethnicity: $ethnicity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FieldsExtracted &&
            const DeepCollectionEquality().equals(other.province, province) &&
            const DeepCollectionEquality().equals(other.idNumber, idNumber) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality().equals(other.homeTown, homeTown) &&
            const DeepCollectionEquality()
                .equals(other.permanentAddress, permanentAddress) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.doe, doe) &&
            const DeepCollectionEquality()
                .equals(other.nationality, nationality) &&
            const DeepCollectionEquality().equals(other.doi, doi) &&
            const DeepCollectionEquality()
                .equals(other.placeOfIssue, placeOfIssue) &&
            const DeepCollectionEquality().equals(other.ethnicity, ethnicity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(province),
      const DeepCollectionEquality().hash(idNumber),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(dob),
      const DeepCollectionEquality().hash(homeTown),
      const DeepCollectionEquality().hash(permanentAddress),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(doe),
      const DeepCollectionEquality().hash(nationality),
      const DeepCollectionEquality().hash(doi),
      const DeepCollectionEquality().hash(placeOfIssue),
      const DeepCollectionEquality().hash(ethnicity));

  @JsonKey(ignore: true)
  @override
  _$$_FieldsExtractedCopyWith<_$_FieldsExtracted> get copyWith =>
      __$$_FieldsExtractedCopyWithImpl<_$_FieldsExtracted>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldsExtractedToJson(this);
  }
}

abstract class _FieldsExtracted implements FieldsExtracted {
  const factory _FieldsExtracted(
      {final Province? province,
      final IdNumber? idNumber,
      final Name? name,
      final Dob? dob,
      final HomeTown? homeTown,
      final PermanentAddress? permanentAddress,
      final Gender? gender,
      final Doe? doe,
      final Nationality? nationality,
      final Doi? doi,
      final PlaceOfIssue? placeOfIssue,
      final Ethnicity? ethnicity}) = _$_FieldsExtracted;

  factory _FieldsExtracted.fromJson(Map<String, dynamic> json) =
      _$_FieldsExtracted.fromJson;

  @override
  Province? get province;
  @override
  IdNumber? get idNumber;
  @override
  Name? get name;
  @override
  Dob? get dob;
  @override
  HomeTown? get homeTown;
  @override
  PermanentAddress? get permanentAddress;
  @override
  Gender? get gender;
  @override
  Doe? get doe;
  @override
  Nationality? get nationality;
  @override
  Doi? get doi;
  @override
  PlaceOfIssue? get placeOfIssue;
  @override
  Ethnicity? get ethnicity;
  @override
  @JsonKey(ignore: true)
  _$$_FieldsExtractedCopyWith<_$_FieldsExtracted> get copyWith =>
      throw _privateConstructorUsedError;
}

Province _$ProvinceFromJson(Map<String, dynamic> json) {
  return _Province.fromJson(json);
}

/// @nodoc
mixin _$Province {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceCopyWith<Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCopyWith<$Res> {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) then) =
      _$ProvinceCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$ProvinceCopyWithImpl<$Res> implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._value, this._then);

  final Province _value;
  // ignore: unused_field
  final $Res Function(Province) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProvinceCopyWith<$Res> implements $ProvinceCopyWith<$Res> {
  factory _$$_ProvinceCopyWith(
          _$_Province value, $Res Function(_$_Province) then) =
      __$$_ProvinceCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_ProvinceCopyWithImpl<$Res> extends _$ProvinceCopyWithImpl<$Res>
    implements _$$_ProvinceCopyWith<$Res> {
  __$$_ProvinceCopyWithImpl(
      _$_Province _value, $Res Function(_$_Province) _then)
      : super(_value, (v) => _then(v as _$_Province));

  @override
  _$_Province get _value => super._value as _$_Province;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Province(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Province implements _Province {
  const _$_Province({this.value});

  factory _$_Province.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinceFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'Province(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Province &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_ProvinceCopyWith<_$_Province> get copyWith =>
      __$$_ProvinceCopyWithImpl<_$_Province>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinceToJson(this);
  }
}

abstract class _Province implements Province {
  const factory _Province({final String? value}) = _$_Province;

  factory _Province.fromJson(Map<String, dynamic> json) = _$_Province.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_ProvinceCopyWith<_$_Province> get copyWith =>
      throw _privateConstructorUsedError;
}

IdNumber _$IdNumberFromJson(Map<String, dynamic> json) {
  return _IdNumber.fromJson(json);
}

/// @nodoc
mixin _$IdNumber {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdNumberCopyWith<IdNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdNumberCopyWith<$Res> {
  factory $IdNumberCopyWith(IdNumber value, $Res Function(IdNumber) then) =
      _$IdNumberCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$IdNumberCopyWithImpl<$Res> implements $IdNumberCopyWith<$Res> {
  _$IdNumberCopyWithImpl(this._value, this._then);

  final IdNumber _value;
  // ignore: unused_field
  final $Res Function(IdNumber) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_IdNumberCopyWith<$Res> implements $IdNumberCopyWith<$Res> {
  factory _$$_IdNumberCopyWith(
          _$_IdNumber value, $Res Function(_$_IdNumber) then) =
      __$$_IdNumberCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_IdNumberCopyWithImpl<$Res> extends _$IdNumberCopyWithImpl<$Res>
    implements _$$_IdNumberCopyWith<$Res> {
  __$$_IdNumberCopyWithImpl(
      _$_IdNumber _value, $Res Function(_$_IdNumber) _then)
      : super(_value, (v) => _then(v as _$_IdNumber));

  @override
  _$_IdNumber get _value => super._value as _$_IdNumber;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_IdNumber(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdNumber implements _IdNumber {
  const _$_IdNumber({this.value});

  factory _$_IdNumber.fromJson(Map<String, dynamic> json) =>
      _$$_IdNumberFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'IdNumber(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdNumber &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_IdNumberCopyWith<_$_IdNumber> get copyWith =>
      __$$_IdNumberCopyWithImpl<_$_IdNumber>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdNumberToJson(this);
  }
}

abstract class _IdNumber implements IdNumber {
  const factory _IdNumber({final String? value}) = _$_IdNumber;

  factory _IdNumber.fromJson(Map<String, dynamic> json) = _$_IdNumber.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_IdNumberCopyWith<_$_IdNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$NameCopyWithImpl<$Res> implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  final Name _value;
  // ignore: unused_field
  final $Res Function(Name) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$_NameCopyWith(_$_Name value, $Res Function(_$_Name) then) =
      __$$_NameCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_NameCopyWithImpl<$Res> extends _$NameCopyWithImpl<$Res>
    implements _$$_NameCopyWith<$Res> {
  __$$_NameCopyWithImpl(_$_Name _value, $Res Function(_$_Name) _then)
      : super(_value, (v) => _then(v as _$_Name));

  @override
  _$_Name get _value => super._value as _$_Name;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Name(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Name implements _Name {
  const _$_Name({this.value});

  factory _$_Name.fromJson(Map<String, dynamic> json) => _$$_NameFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'Name(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Name &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_NameCopyWith<_$_Name> get copyWith =>
      __$$_NameCopyWithImpl<_$_Name>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameToJson(this);
  }
}

abstract class _Name implements Name {
  const factory _Name({final String? value}) = _$_Name;

  factory _Name.fromJson(Map<String, dynamic> json) = _$_Name.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_NameCopyWith<_$_Name> get copyWith => throw _privateConstructorUsedError;
}

Dob _$DobFromJson(Map<String, dynamic> json) {
  return _Dob.fromJson(json);
}

/// @nodoc
mixin _$Dob {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DobCopyWith<Dob> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DobCopyWith<$Res> {
  factory $DobCopyWith(Dob value, $Res Function(Dob) then) =
      _$DobCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$DobCopyWithImpl<$Res> implements $DobCopyWith<$Res> {
  _$DobCopyWithImpl(this._value, this._then);

  final Dob _value;
  // ignore: unused_field
  final $Res Function(Dob) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DobCopyWith<$Res> implements $DobCopyWith<$Res> {
  factory _$$_DobCopyWith(_$_Dob value, $Res Function(_$_Dob) then) =
      __$$_DobCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_DobCopyWithImpl<$Res> extends _$DobCopyWithImpl<$Res>
    implements _$$_DobCopyWith<$Res> {
  __$$_DobCopyWithImpl(_$_Dob _value, $Res Function(_$_Dob) _then)
      : super(_value, (v) => _then(v as _$_Dob));

  @override
  _$_Dob get _value => super._value as _$_Dob;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Dob(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dob implements _Dob {
  const _$_Dob({this.value});

  factory _$_Dob.fromJson(Map<String, dynamic> json) => _$$_DobFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'Dob(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dob &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_DobCopyWith<_$_Dob> get copyWith =>
      __$$_DobCopyWithImpl<_$_Dob>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DobToJson(this);
  }
}

abstract class _Dob implements Dob {
  const factory _Dob({final String? value}) = _$_Dob;

  factory _Dob.fromJson(Map<String, dynamic> json) = _$_Dob.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_DobCopyWith<_$_Dob> get copyWith => throw _privateConstructorUsedError;
}

HomeTown _$HomeTownFromJson(Map<String, dynamic> json) {
  return _HomeTown.fromJson(json);
}

/// @nodoc
mixin _$HomeTown {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeTownCopyWith<HomeTown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTownCopyWith<$Res> {
  factory $HomeTownCopyWith(HomeTown value, $Res Function(HomeTown) then) =
      _$HomeTownCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$HomeTownCopyWithImpl<$Res> implements $HomeTownCopyWith<$Res> {
  _$HomeTownCopyWithImpl(this._value, this._then);

  final HomeTown _value;
  // ignore: unused_field
  final $Res Function(HomeTown) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeTownCopyWith<$Res> implements $HomeTownCopyWith<$Res> {
  factory _$$_HomeTownCopyWith(
          _$_HomeTown value, $Res Function(_$_HomeTown) then) =
      __$$_HomeTownCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_HomeTownCopyWithImpl<$Res> extends _$HomeTownCopyWithImpl<$Res>
    implements _$$_HomeTownCopyWith<$Res> {
  __$$_HomeTownCopyWithImpl(
      _$_HomeTown _value, $Res Function(_$_HomeTown) _then)
      : super(_value, (v) => _then(v as _$_HomeTown));

  @override
  _$_HomeTown get _value => super._value as _$_HomeTown;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_HomeTown(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeTown implements _HomeTown {
  const _$_HomeTown({this.value});

  factory _$_HomeTown.fromJson(Map<String, dynamic> json) =>
      _$$_HomeTownFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'HomeTown(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeTown &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_HomeTownCopyWith<_$_HomeTown> get copyWith =>
      __$$_HomeTownCopyWithImpl<_$_HomeTown>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeTownToJson(this);
  }
}

abstract class _HomeTown implements HomeTown {
  const factory _HomeTown({final String? value}) = _$_HomeTown;

  factory _HomeTown.fromJson(Map<String, dynamic> json) = _$_HomeTown.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_HomeTownCopyWith<_$_HomeTown> get copyWith =>
      throw _privateConstructorUsedError;
}

PermanentAddress _$PermanentAddressFromJson(Map<String, dynamic> json) {
  return _PermanentAddress.fromJson(json);
}

/// @nodoc
mixin _$PermanentAddress {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermanentAddressCopyWith<PermanentAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermanentAddressCopyWith<$Res> {
  factory $PermanentAddressCopyWith(
          PermanentAddress value, $Res Function(PermanentAddress) then) =
      _$PermanentAddressCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$PermanentAddressCopyWithImpl<$Res>
    implements $PermanentAddressCopyWith<$Res> {
  _$PermanentAddressCopyWithImpl(this._value, this._then);

  final PermanentAddress _value;
  // ignore: unused_field
  final $Res Function(PermanentAddress) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PermanentAddressCopyWith<$Res>
    implements $PermanentAddressCopyWith<$Res> {
  factory _$$_PermanentAddressCopyWith(
          _$_PermanentAddress value, $Res Function(_$_PermanentAddress) then) =
      __$$_PermanentAddressCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_PermanentAddressCopyWithImpl<$Res>
    extends _$PermanentAddressCopyWithImpl<$Res>
    implements _$$_PermanentAddressCopyWith<$Res> {
  __$$_PermanentAddressCopyWithImpl(
      _$_PermanentAddress _value, $Res Function(_$_PermanentAddress) _then)
      : super(_value, (v) => _then(v as _$_PermanentAddress));

  @override
  _$_PermanentAddress get _value => super._value as _$_PermanentAddress;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_PermanentAddress(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PermanentAddress implements _PermanentAddress {
  const _$_PermanentAddress({this.value});

  factory _$_PermanentAddress.fromJson(Map<String, dynamic> json) =>
      _$$_PermanentAddressFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'PermanentAddress(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PermanentAddress &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_PermanentAddressCopyWith<_$_PermanentAddress> get copyWith =>
      __$$_PermanentAddressCopyWithImpl<_$_PermanentAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PermanentAddressToJson(this);
  }
}

abstract class _PermanentAddress implements PermanentAddress {
  const factory _PermanentAddress({final String? value}) = _$_PermanentAddress;

  factory _PermanentAddress.fromJson(Map<String, dynamic> json) =
      _$_PermanentAddress.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_PermanentAddressCopyWith<_$_PermanentAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

Gender _$GenderFromJson(Map<String, dynamic> json) {
  return _Gender.fromJson(json);
}

/// @nodoc
mixin _$Gender {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderCopyWith<Gender> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderCopyWith<$Res> {
  factory $GenderCopyWith(Gender value, $Res Function(Gender) then) =
      _$GenderCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$GenderCopyWithImpl<$Res> implements $GenderCopyWith<$Res> {
  _$GenderCopyWithImpl(this._value, this._then);

  final Gender _value;
  // ignore: unused_field
  final $Res Function(Gender) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GenderCopyWith<$Res> implements $GenderCopyWith<$Res> {
  factory _$$_GenderCopyWith(_$_Gender value, $Res Function(_$_Gender) then) =
      __$$_GenderCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_GenderCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements _$$_GenderCopyWith<$Res> {
  __$$_GenderCopyWithImpl(_$_Gender _value, $Res Function(_$_Gender) _then)
      : super(_value, (v) => _then(v as _$_Gender));

  @override
  _$_Gender get _value => super._value as _$_Gender;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Gender(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gender implements _Gender {
  const _$_Gender({this.value});

  factory _$_Gender.fromJson(Map<String, dynamic> json) =>
      _$$_GenderFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'Gender(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gender &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_GenderCopyWith<_$_Gender> get copyWith =>
      __$$_GenderCopyWithImpl<_$_Gender>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenderToJson(this);
  }
}

abstract class _Gender implements Gender {
  const factory _Gender({final String? value}) = _$_Gender;

  factory _Gender.fromJson(Map<String, dynamic> json) = _$_Gender.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_GenderCopyWith<_$_Gender> get copyWith =>
      throw _privateConstructorUsedError;
}

Doe _$DoeFromJson(Map<String, dynamic> json) {
  return _Doe.fromJson(json);
}

/// @nodoc
mixin _$Doe {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoeCopyWith<Doe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoeCopyWith<$Res> {
  factory $DoeCopyWith(Doe value, $Res Function(Doe) then) =
      _$DoeCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$DoeCopyWithImpl<$Res> implements $DoeCopyWith<$Res> {
  _$DoeCopyWithImpl(this._value, this._then);

  final Doe _value;
  // ignore: unused_field
  final $Res Function(Doe) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DoeCopyWith<$Res> implements $DoeCopyWith<$Res> {
  factory _$$_DoeCopyWith(_$_Doe value, $Res Function(_$_Doe) then) =
      __$$_DoeCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_DoeCopyWithImpl<$Res> extends _$DoeCopyWithImpl<$Res>
    implements _$$_DoeCopyWith<$Res> {
  __$$_DoeCopyWithImpl(_$_Doe _value, $Res Function(_$_Doe) _then)
      : super(_value, (v) => _then(v as _$_Doe));

  @override
  _$_Doe get _value => super._value as _$_Doe;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Doe(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Doe implements _Doe {
  const _$_Doe({this.value});

  factory _$_Doe.fromJson(Map<String, dynamic> json) => _$$_DoeFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'Doe(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Doe &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_DoeCopyWith<_$_Doe> get copyWith =>
      __$$_DoeCopyWithImpl<_$_Doe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoeToJson(this);
  }
}

abstract class _Doe implements Doe {
  const factory _Doe({final String? value}) = _$_Doe;

  factory _Doe.fromJson(Map<String, dynamic> json) = _$_Doe.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_DoeCopyWith<_$_Doe> get copyWith => throw _privateConstructorUsedError;
}

Nationality _$NationalityFromJson(Map<String, dynamic> json) {
  return _Nationality.fromJson(json);
}

/// @nodoc
mixin _$Nationality {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NationalityCopyWith<Nationality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NationalityCopyWith<$Res> {
  factory $NationalityCopyWith(
          Nationality value, $Res Function(Nationality) then) =
      _$NationalityCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$NationalityCopyWithImpl<$Res> implements $NationalityCopyWith<$Res> {
  _$NationalityCopyWithImpl(this._value, this._then);

  final Nationality _value;
  // ignore: unused_field
  final $Res Function(Nationality) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NationalityCopyWith<$Res>
    implements $NationalityCopyWith<$Res> {
  factory _$$_NationalityCopyWith(
          _$_Nationality value, $Res Function(_$_Nationality) then) =
      __$$_NationalityCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_NationalityCopyWithImpl<$Res> extends _$NationalityCopyWithImpl<$Res>
    implements _$$_NationalityCopyWith<$Res> {
  __$$_NationalityCopyWithImpl(
      _$_Nationality _value, $Res Function(_$_Nationality) _then)
      : super(_value, (v) => _then(v as _$_Nationality));

  @override
  _$_Nationality get _value => super._value as _$_Nationality;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Nationality(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nationality implements _Nationality {
  const _$_Nationality({this.value});

  factory _$_Nationality.fromJson(Map<String, dynamic> json) =>
      _$$_NationalityFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'Nationality(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nationality &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_NationalityCopyWith<_$_Nationality> get copyWith =>
      __$$_NationalityCopyWithImpl<_$_Nationality>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NationalityToJson(this);
  }
}

abstract class _Nationality implements Nationality {
  const factory _Nationality({final String? value}) = _$_Nationality;

  factory _Nationality.fromJson(Map<String, dynamic> json) =
      _$_Nationality.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_NationalityCopyWith<_$_Nationality> get copyWith =>
      throw _privateConstructorUsedError;
}

Doi _$DoiFromJson(Map<String, dynamic> json) {
  return _Doi.fromJson(json);
}

/// @nodoc
mixin _$Doi {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoiCopyWith<Doi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoiCopyWith<$Res> {
  factory $DoiCopyWith(Doi value, $Res Function(Doi) then) =
      _$DoiCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$DoiCopyWithImpl<$Res> implements $DoiCopyWith<$Res> {
  _$DoiCopyWithImpl(this._value, this._then);

  final Doi _value;
  // ignore: unused_field
  final $Res Function(Doi) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DoiCopyWith<$Res> implements $DoiCopyWith<$Res> {
  factory _$$_DoiCopyWith(_$_Doi value, $Res Function(_$_Doi) then) =
      __$$_DoiCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_DoiCopyWithImpl<$Res> extends _$DoiCopyWithImpl<$Res>
    implements _$$_DoiCopyWith<$Res> {
  __$$_DoiCopyWithImpl(_$_Doi _value, $Res Function(_$_Doi) _then)
      : super(_value, (v) => _then(v as _$_Doi));

  @override
  _$_Doi get _value => super._value as _$_Doi;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Doi(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Doi implements _Doi {
  const _$_Doi({this.value});

  factory _$_Doi.fromJson(Map<String, dynamic> json) => _$$_DoiFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'Doi(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Doi &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_DoiCopyWith<_$_Doi> get copyWith =>
      __$$_DoiCopyWithImpl<_$_Doi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoiToJson(this);
  }
}

abstract class _Doi implements Doi {
  const factory _Doi({final String? value}) = _$_Doi;

  factory _Doi.fromJson(Map<String, dynamic> json) = _$_Doi.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_DoiCopyWith<_$_Doi> get copyWith => throw _privateConstructorUsedError;
}

PlaceOfIssue _$PlaceOfIssueFromJson(Map<String, dynamic> json) {
  return _PlaceOfIssue.fromJson(json);
}

/// @nodoc
mixin _$PlaceOfIssue {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOfIssueCopyWith<PlaceOfIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOfIssueCopyWith<$Res> {
  factory $PlaceOfIssueCopyWith(
          PlaceOfIssue value, $Res Function(PlaceOfIssue) then) =
      _$PlaceOfIssueCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$PlaceOfIssueCopyWithImpl<$Res> implements $PlaceOfIssueCopyWith<$Res> {
  _$PlaceOfIssueCopyWithImpl(this._value, this._then);

  final PlaceOfIssue _value;
  // ignore: unused_field
  final $Res Function(PlaceOfIssue) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceOfIssueCopyWith<$Res>
    implements $PlaceOfIssueCopyWith<$Res> {
  factory _$$_PlaceOfIssueCopyWith(
          _$_PlaceOfIssue value, $Res Function(_$_PlaceOfIssue) then) =
      __$$_PlaceOfIssueCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_PlaceOfIssueCopyWithImpl<$Res>
    extends _$PlaceOfIssueCopyWithImpl<$Res>
    implements _$$_PlaceOfIssueCopyWith<$Res> {
  __$$_PlaceOfIssueCopyWithImpl(
      _$_PlaceOfIssue _value, $Res Function(_$_PlaceOfIssue) _then)
      : super(_value, (v) => _then(v as _$_PlaceOfIssue));

  @override
  _$_PlaceOfIssue get _value => super._value as _$_PlaceOfIssue;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_PlaceOfIssue(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceOfIssue implements _PlaceOfIssue {
  const _$_PlaceOfIssue({this.value});

  factory _$_PlaceOfIssue.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceOfIssueFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'PlaceOfIssue(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceOfIssue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceOfIssueCopyWith<_$_PlaceOfIssue> get copyWith =>
      __$$_PlaceOfIssueCopyWithImpl<_$_PlaceOfIssue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceOfIssueToJson(this);
  }
}

abstract class _PlaceOfIssue implements PlaceOfIssue {
  const factory _PlaceOfIssue({final String? value}) = _$_PlaceOfIssue;

  factory _PlaceOfIssue.fromJson(Map<String, dynamic> json) =
      _$_PlaceOfIssue.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceOfIssueCopyWith<_$_PlaceOfIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

Ethnicity _$EthnicityFromJson(Map<String, dynamic> json) {
  return _Ethnicity.fromJson(json);
}

/// @nodoc
mixin _$Ethnicity {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EthnicityCopyWith<Ethnicity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EthnicityCopyWith<$Res> {
  factory $EthnicityCopyWith(Ethnicity value, $Res Function(Ethnicity) then) =
      _$EthnicityCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$EthnicityCopyWithImpl<$Res> implements $EthnicityCopyWith<$Res> {
  _$EthnicityCopyWithImpl(this._value, this._then);

  final Ethnicity _value;
  // ignore: unused_field
  final $Res Function(Ethnicity) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EthnicityCopyWith<$Res> implements $EthnicityCopyWith<$Res> {
  factory _$$_EthnicityCopyWith(
          _$_Ethnicity value, $Res Function(_$_Ethnicity) then) =
      __$$_EthnicityCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_EthnicityCopyWithImpl<$Res> extends _$EthnicityCopyWithImpl<$Res>
    implements _$$_EthnicityCopyWith<$Res> {
  __$$_EthnicityCopyWithImpl(
      _$_Ethnicity _value, $Res Function(_$_Ethnicity) _then)
      : super(_value, (v) => _then(v as _$_Ethnicity));

  @override
  _$_Ethnicity get _value => super._value as _$_Ethnicity;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Ethnicity(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ethnicity implements _Ethnicity {
  const _$_Ethnicity({this.value});

  factory _$_Ethnicity.fromJson(Map<String, dynamic> json) =>
      _$$_EthnicityFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'Ethnicity(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ethnicity &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_EthnicityCopyWith<_$_Ethnicity> get copyWith =>
      __$$_EthnicityCopyWithImpl<_$_Ethnicity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EthnicityToJson(this);
  }
}

abstract class _Ethnicity implements Ethnicity {
  const factory _Ethnicity({final String? value}) = _$_Ethnicity;

  factory _Ethnicity.fromJson(Map<String, dynamic> json) =
      _$_Ethnicity.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_EthnicityCopyWith<_$_Ethnicity> get copyWith =>
      throw _privateConstructorUsedError;
}
