// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capture_face_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CaptureFaceResponse _$$_CaptureFaceResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CaptureFaceResponse(
      result: json['result'] == null
          ? null
          : ResultCaptureFace.fromJson(json['result'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String?,
    );

Map<String, dynamic> _$$_CaptureFaceResponseToJson(
        _$_CaptureFaceResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'statusCode': instance.statusCode,
    };

_$_ResultCaptureFace _$$_ResultCaptureFaceFromJson(Map<String, dynamic> json) =>
    _$_ResultCaptureFace(
      summary: json['summary'] == null
          ? null
          : Summary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultCaptureFaceToJson(
        _$_ResultCaptureFace instance) =>
    <String, dynamic>{
      'summary': instance.summary,
    };

_$_Summary _$$_SummaryFromJson(Map<String, dynamic> json) => _$_Summary(
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$_SummaryToJson(_$_Summary instance) =>
    <String, dynamic>{
      'action': instance.action,
    };
