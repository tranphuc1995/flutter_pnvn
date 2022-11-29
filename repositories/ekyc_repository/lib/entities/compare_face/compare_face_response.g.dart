// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compare_face_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompareFaceResponse _$$_CompareFaceResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CompareFaceResponse(
      result: json['result'] == null
          ? null
          : ResultCompareFace.fromJson(json['result'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String?,
    );

Map<String, dynamic> _$$_CompareFaceResponseToJson(
        _$_CompareFaceResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'statusCode': instance.statusCode,
    };

_$_ResultCompareFace _$$_ResultCompareFaceFromJson(Map<String, dynamic> json) =>
    _$_ResultCompareFace(
      match_score: json['match_score'] as int?,
    );

Map<String, dynamic> _$$_ResultCompareFaceToJson(
        _$_ResultCompareFace instance) =>
    <String, dynamic>{
      'match_score': instance.match_score,
    };
