// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_ocr_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadOcrResponse _$$_UploadOcrResponseFromJson(Map<String, dynamic> json) =>
    _$_UploadOcrResponse(
      metaData: json['metaData'] == null
          ? null
          : MetaDataOcr.fromJson(json['metaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UploadOcrResponseToJson(
        _$_UploadOcrResponse instance) =>
    <String, dynamic>{
      'metaData': instance.metaData,
    };

_$_MetaDataOcr _$$_MetaDataOcrFromJson(Map<String, dynamic> json) =>
    _$_MetaDataOcr(
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_MetaDataOcrToJson(_$_MetaDataOcr instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
