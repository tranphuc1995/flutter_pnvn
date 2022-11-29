// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_file_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadFileResponse _$$_UploadFileResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UploadFileResponse(
      data: json['data'] == null
          ? null
          : DataUploadFile.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UploadFileResponseToJson(
        _$_UploadFileResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_DataUploadFile _$$_DataUploadFileFromJson(Map<String, dynamic> json) =>
    _$_DataUploadFile(
      fileUrlOrigin: json['fileUrlOrigin'] as String?,
      fileUrl: json['fileUrl'] as String?,
    );

Map<String, dynamic> _$$_DataUploadFileToJson(_$_DataUploadFile instance) =>
    <String, dynamic>{
      'fileUrlOrigin': instance.fileUrlOrigin,
      'fileUrl': instance.fileUrl,
    };
