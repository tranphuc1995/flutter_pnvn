import 'package:ekyc_repository/ekyc_repository.dart';
import 'package:ekyc_repository/entities/get_ocr_data/get_ocr_data_response.dart';
import 'package:ekyc_repository/entities/upload_file/upload_file_response.dart';
import 'package:ekyc_repository/entities/upload_ocr/upload_ocr_response.dart';

abstract class EkycRepo {
  Future<UploadFileResponse> uploadImge({required String path});
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
      required String nationality});
  Future<GetOcrDataResponse> getDataOcr();

  Future<OcrResponse> getOcrFromHyperverge(
      {required String appID, required String appKey, required String pathImg});
  Future<CompareFaceResponse> compareFaceFromHyperverge(
      {required String appID,
      required String appKey,
      required String pathSelfie,
      required String pathDocument});
}
