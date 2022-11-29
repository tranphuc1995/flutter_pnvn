import 'dart:math';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:ekyc_repository/entities/compare_face/compare_face_response.dart';
import 'package:ekyc_repository/entities/get_ocr_data/get_ocr_data_response.dart';
import 'package:ekyc_repository/entities/orc/ocr_response.dart';
import 'package:ekyc_repository/entities/upload_file/upload_file_response.dart';
import 'package:ekyc_repository/entities/upload_ocr/upload_ocr_response.dart';
import 'package:ekyc_repository/repo/ekyc_repo.dart';

import 'package:get/get.dart' as lget;

class EkycRepoImpl extends EkycRepo {
  //final dio.Dio _dio = Get.find();
  final String uploadFile = '/api/v2/EKyc/upload';
  final String uploadEkyc = '/api/v2/EKyc';
  final String dataOcr = '/api/v2/EKyc/info';
  final Dio _dio = lget.Get.find();
  final _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final _rnd = Random();

  @override
  Future<UploadOcrResponse> uploadDataEkyc(
      {required int type,
      required String avatar,
      required String idNumber,
      required String fullName,
      required String dayOfBirth,
      required String domicile,
      required String permanentAddress,
      required String idIssuedDate,
      required String idissuedPlace,
      required String frontImage,
      required String backImage,
      required String gender,
      required String nationality}) async {
    try {
      var response = await _dio.post(uploadEkyc, data: {
        'type': type,
        'avatar': avatar,
        'idNumber': idNumber,
        'fullName': fullName,
        'dayOfBirth': dayOfBirth,
        'domicile': domicile,
        'permanentAddress': permanentAddress,
        'idIssuedDate': idIssuedDate,
        'idissuedPlace': idissuedPlace,
        'frontImage': frontImage,
        'backImage': backImage,
        'gender': gender,
        'nationality': nationality,
      });

      return UploadOcrResponse.fromJson(response.data);
    } catch (e) {
      return UploadOcrResponse.fromJson((e as DioError).response?.data);
    }
  }

  @override
  Future<GetOcrDataResponse> getDataOcr() async {
    try {
      var response = await _dio.get(dataOcr);
      return GetOcrDataResponse.fromJson(response.data);
    } catch (e) {
      return const GetOcrDataResponse();
    }
  }

  @override
  Future<UploadFileResponse> uploadImge({required String path}) async {
    try {
      var dio = Dio();
      dio.options.headers['Authorization'] = 'Bearer ${AppConfig.currentToken}';
      var formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(path,
            filename: '${getRandomString(15)}.jpg'),
      });

      var response = await dio.post(AppConfig.currentEnviroment + uploadFile,
          data: formData);

      return UploadFileResponse.fromJson(response.data);
    } catch (e) {
      var errorCode =
          (e as DioError).response?.data['metaData']['errorCode'].toString() ??
              '';
      if (errorCode == 'ER018' || errorCode == '401') {
        showBottomSheetHelper(botttomSheetType: BotttomSheetType.forceLogout);
      }
      return const UploadFileResponse();
    }
  }

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  @override
  Future<OcrResponse> getOcrFromHyperverge(
      {required String appID,
      required String appKey,
      required String pathImg}) async {
    try {
      var dio = Dio();
      dio.options.headers['Content-Type'] = 'multipart/form-data';
      dio.options.headers['transactionID'] = '123';
      dio.options.headers['appId'] = appID;
      dio.options.headers['appKey'] = appKey;
      var formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(pathImg,
            filename: '${getRandomString(15)}.jpg'),
      });

      var response = await dio
          .post('https://vnm-docs.hyperverge.co/v2/nationalID', data: formData);

      return OcrResponse.fromJson(response.data);
    } catch (e) {
      return const OcrResponse();
    }
  }

  @override
  Future<CompareFaceResponse> compareFaceFromHyperverge(
      {required String appID,
      required String appKey,
      required String pathSelfie,
      required String pathDocument}) async {
    try {
      var dio = Dio();
      dio.options.headers['Content-Type'] = 'multipart/form-data';

      dio.options.headers['appId'] = appID;
      dio.options.headers['appKey'] = appKey;
      var formData = FormData.fromMap({
        'selfie': await MultipartFile.fromFile(pathSelfie,
            filename: '${getRandomString(15)}.jpg'),
        'id': await MultipartFile.fromFile(pathDocument,
            filename: '${getRandomString(15)}.jpg'),
      });

      var response = await dio.post(
          'https://apac-faceid.hyperverge.co/v1/photo/verifyPair',
          data: formData);

      return CompareFaceResponse.fromJson(response.data);
    } catch (e) {
      return const CompareFaceResponse();
    }
  }
}
