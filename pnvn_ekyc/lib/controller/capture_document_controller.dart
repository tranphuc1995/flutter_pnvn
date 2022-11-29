import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:ekyc_repository/ekyc_repository.dart';
import 'package:finos_mobile_flutter_ekyc_v3_wrapper/ekyc_wrapper_config.dart';
import 'package:finos_mobile_flutter_ekyc_v3_wrapper/hpv/finos_ekyc_snap_sdk.dart';
import 'package:finos_mobile_flutter_ekyc_v3_wrapper/hpv/finos_ekyc_docs_capture.dart';
import 'package:finos_mobile_flutter_ekyc_v3_wrapper/hpv/finos_ekyc_face_capture.dart';
import 'package:finos_mobile_flutter_ekyc_v3_wrapper/hpv/finos_ekyc_network_helper.dart';
import 'package:finos_mobile_flutter_ekyc_v3_wrapper/hpv/finos_ekyc_snap_params.dart';
import 'package:get/get.dart';
import 'package:hypersnapsdk_flutter/HVDocsCapture.dart';
import 'package:hypersnapsdk_flutter/HVFaceCapture.dart';
import 'package:hypersnapsdk_flutter/HVHyperSnapParams.dart';
import 'package:hypersnapsdk_flutter/HyperSnapSDK.dart';
import 'package:pnvn_ekyc/model/ocr_data.dart';
import 'package:pnvn_ekyc/screen/confirm_screen.dart';

class CaptureDocumentController extends GetxController {
  final EkycRepo _ekycRepo = Get.find();
  var documentFrontUri = '';
  var documentBackUri = '';
  var faceUri = '';
  var isCMND = false;
  var ocrData = OcrData();
  //
  var isShowErrorWidget = false.obs;
  var contentError = ''.obs;
  //
  var isRetakeFrontDocument = false;
  var isRetakeBackDocument = false;
  var isRetakeFace = false;
  var errorEkycFront =
      'Không đọc được thông tin, vui lòng tải lại hình ảnh CMND/ CCCD mặt trước';
  var errorEkycBack =
      'Không đọc được thông tin, vui lòng tải lại hình ảnh CMND/ CCCD mặt sau';
  var errorComapre =
      'Hình ảnh không rõ hoặc không trùng khớp với ảnh CMND/ CCCD, vui lòng tải lại ảnh chân dung rõ nét, rõ mặt.';

  var appID = '7acc92';
  var appKey = '389a628a1b9f1994a6ec';

  void initFinos() async {
    ocrData.isCMND = isCMND;
    // await FinOSEkycSnapSDK.initialize(
    //     configs: {'environment': WrapperEnvironment.sandbox});
    // await FinOSEkycSnapSDK.startUserSession('2313213441423123');
    // _startFrontCapture();
    await HyperSnapSDK.initialize(appID, appKey,
        (await HVHyperSnapParams.getValidParams())['RegionAsiaPacific']);
    _startFrontCapture();
  }

  void _startFrontCapture() async {
    // final docCapture = FinOSEkycDocsCapture()
    //   ..docsCaptureSetShouldShowFlashIcon(true)
    //   ..docsCaptureSetShouldShowInstructionPage(false)
    //   ..docsCaptureSetDocCaptureDescription(
    //       'Hình ảnh cần rõ ràng, không bị mờ và cắt góc. Hình ảnh bắt buộc phải xoay ngang. Vui lòng canh giấy tờ ngay vị trí khung hình.')
    //   ..docsCaptureSetDocCaptureTitle('Chụp mặt trước')
    //   ..docsCaptureSetShouldShowReviewScreen(true)
    //   ..docsCaptureSetDocCaptureSubText('Mặt trước')
    //   ..docsCaptureSetShowTrustLogos(false)
    //   ..docsCaptureSetDocumentType(FinOSEkycDocument.card)
    //   ..docsCaptureSetDocReviewTitle('aaaaaa')
    //   ..docsCaptureSetDocReviewSubTitle('bbbbb')
    //   ..setDocReviewDescription('cccccc')
    //   ..docsCaptureSetOCRAPIDetails(
    //     FinOSEkycDocumentSide.front,
    //     headers: {'x-finos-api-key': '3a634a05-293f-4c6f-82da-33a0fa909bc4'},
    //   );
    // final result = await docCapture.docsCaptureStart();
    await HyperSnapSDK.startUserSession('abcd1234').then((didStart) async {
      var docUiStrings = {
        'docReviewRetakeButton': 'Chụp lại',
        'docReviewContinueButton': 'Dùng ảnh này'
      };
      HVDocsCapture.docsCaptureSetUIStrings(docUiStrings);
      HVDocsCapture.docsCaptureSetDocCaptureTitle('Chụp mặt trước');
      HVDocsCapture.docsCaptureSetDocCaptureSubText('Mặt trước');
      HVDocsCapture.docsCaptureSetDocReviewTitle('Kiểm tra lại ảnh chụp');
      HVDocsCapture.docsCaptureSetDocReviewSubTitle('bbbbb');
      HVDocsCapture.docsCaptureSetDocCaptureDescription(
          'Hình ảnh cần rõ ràng, không bị mờ và cắt góc. Hình ảnh bắt buộc phải xoay ngang. Vui lòng canh giấy tờ ngay vị trí khung hình.');
      HVDocsCapture.docsCaptureSetDocReviewDescription(
          'Hình ảnh cần rõ ràng, không bị mờ và cắt góc. Hình ảnh bắt buộc phải xoay ngang.');
      HVDocsCapture.docsCaptureSetShowTrustLogos(true);
      HVDocsCapture.docsCaptureSetShouldShowReviewScreen(true);

      var result = await HVDocsCapture.docsCaptureStart();

      final docResultObj = result['resultObj'] as Map<Object?, Object?>;
      final docErrorObj = result['errorObj'] as Map<Object?, Object?>;

      if (docErrorObj.isNotEmpty) {
        log('Error: $docErrorObj');
        var errorCode = docErrorObj['errorCode'];
        if (errorCode == 3) {
          Get.back();
        } else {
          isRetakeFrontDocument = true;
          isRetakeBackDocument = false;
          isRetakeFace = false;
          showWidgetError(content: errorEkycFront);
        }
      } else {
        log('Success: $docResultObj');
        //var apiResult = docResultObj['apiResult']; //{}
        // if (apiResult == '{}') {
        //   isRetakeFrontDocument = true;
        //   isRetakeBackDocument = false;
        //   isRetakeFace = false;
        //   showWidgetError(content: errorEkycFront);
        // } else {
        // Map<String, dynamic> dataDynamic = json.decode(apiResult.toString());
        isShowErrorWidget.value = false;
        isShowErrorWidget.refresh();
        var responeFrontData = await _ekycRepo.getOcrFromHyperverge(
            appID: appID,
            appKey: appKey,
            pathImg: docResultObj['imageUri'].toString());
        if (responeFrontData.statusCode == '200') {
          if (isCMND) {
            if ((responeFrontData.result?.details?[0].type ?? '') ==
                'cmnd_old_front') {
              documentFrontUri = docResultObj['imageUri'].toString();
              ocrData.idNumber = responeFrontData
                      .result?.details?[0].fieldsExtracted?.idNumber?.value ??
                  '';
              ocrData.fullName = responeFrontData
                      .result?.details?[0].fieldsExtracted?.name?.value ??
                  '';
              ocrData.dob = responeFrontData
                      .result?.details?[0].fieldsExtracted?.dob?.value ??
                  '';

              ocrData.homeTown = responeFrontData
                      .result?.details?[0].fieldsExtracted?.homeTown?.value ??
                  '';
              ocrData.permanentAddress = responeFrontData.result?.details?[0]
                      .fieldsExtracted?.permanentAddress?.value ??
                  '';
              offWidgetError();
              _startBackCapture();
            } else {
              isRetakeFrontDocument = true;
              isRetakeBackDocument = false;
              isRetakeFace = false;
              showWidgetError(
                  content: 'Mặt trước không phải là chứng minh nhân dân');
            }
          } else {
            if ((responeFrontData.result?.details?[0].type ?? '') ==
                    'cccd_chip_front' ||
                (responeFrontData.result?.details?[0].type ?? '') ==
                    'cccd_front') {
              documentFrontUri = docResultObj['imageUri'].toString();
              ocrData.idNumber = responeFrontData
                      .result?.details?[0].fieldsExtracted?.idNumber?.value ??
                  '';
              ocrData.fullName = responeFrontData
                      .result?.details?[0].fieldsExtracted?.name?.value ??
                  '';
              ocrData.dob = responeFrontData
                      .result?.details?[0].fieldsExtracted?.dob?.value ??
                  '';
              ocrData.gender = responeFrontData
                      .result?.details?[0].fieldsExtracted?.gender?.value ??
                  '';
              if (ocrData.gender == 'M') {
                ocrData.gender = 'Nam';
              } else if (ocrData.gender == 'F') {
                ocrData.gender = 'Nữ';
              }
              ocrData.nationality = responeFrontData.result?.details?[0]
                      .fieldsExtracted?.nationality?.value ??
                  '';
              ocrData.homeTown = responeFrontData
                      .result?.details?[0].fieldsExtracted?.homeTown?.value ??
                  '';
              ocrData.permanentAddress = responeFrontData.result?.details?[0]
                      .fieldsExtracted?.permanentAddress?.value ??
                  '';
              offWidgetError();
              _startBackCapture();
            } else {
              isRetakeFrontDocument = true;
              isRetakeBackDocument = false;
              isRetakeFace = false;
              showWidgetError(
                  content: 'Mặt trước không phải là căn cước công dân');
            }
          }
        } else {
          isRetakeFrontDocument = true;
          isRetakeBackDocument = false;
          isRetakeFace = false;
          ////////////
          showWidgetError(content: errorEkycFront);
        }
      }
    });
    //}
  }

  void _startBackCapture() async {
    // final docCapture = FinOSEkycDocsCapture()
    //   ..docsCaptureSetShouldShowFlashIcon(true)
    //   ..docsCaptureSetShouldShowInstructionPage(false)
    //   ..docsCaptureSetDocCaptureTitle('Chụp mặt sau')
    //   ..docsCaptureSetDocCaptureDescription(
    //       'Hình ảnh cần rõ ràng, không bị mờ và cắt góc. Hình ảnh bắt buộc phải xoay ngang. Vui lòng canh giấy tờ ngay vị trí khung hình.')
    //   ..docsCaptureSetShouldShowReviewScreen(true)
    //   ..docsCaptureSetDocCaptureSubText('Mặt sau')
    //   ..docsCaptureSetDocumentType(FinOSEkycDocument.card)
    //   ..docsCaptureSetDocReviewTitle('aaaa')
    //   ..docsCaptureSetDocReviewSubTitle('bbbbb')
    //   ..setDocReviewDescription('cccccc')
    //   ..docsCaptureSetOCRAPIDetails(
    //     FinOSEkycDocumentSide.back,
    //     headers: {'x-finos-api-key': '3a634a05-293f-4c6f-82da-33a0fa909bc4'},
    //   )
    //   ..docsCaptureSetDocCaptureTitle('Chụp mặt sau');

    //final result = await docCapture.docsCaptureStart();
    await HyperSnapSDK.startUserSession('abcd1234').then((didStart) async {
      var docUiStrings = {
        'docReviewRetakeButton': 'Chụp lại',
        'docReviewContinueButton': 'Dùng ảnh này'
      };
      HVDocsCapture.docsCaptureSetUIStrings(docUiStrings);
      HVDocsCapture.docsCaptureSetDocCaptureTitle('Chụp mặt sau');
      HVDocsCapture.docsCaptureSetDocCaptureSubText('Mặt sau');
      HVDocsCapture.docsCaptureSetDocReviewTitle('Kiểm tra lại ảnh chụp');
      HVDocsCapture.docsCaptureSetDocReviewSubTitle('bbbbb');
      HVDocsCapture.docsCaptureSetDocCaptureDescription(
          'Hình ảnh cần rõ ràng, không bị mờ và cắt góc. Hình ảnh bắt buộc phải xoay ngang. Vui lòng canh giấy tờ ngay vị trí khung hình.');
      HVDocsCapture.docsCaptureSetDocReviewDescription(
          'Hình ảnh cần rõ ràng, không bị mờ và cắt góc. Hình ảnh bắt buộc phải xoay ngang.');
      HVDocsCapture.docsCaptureSetShowTrustLogos(true);
      HVDocsCapture.docsCaptureSetShouldShowReviewScreen(true);
      var result = await HVDocsCapture.docsCaptureStart();

      final docResultObj = result['resultObj'] as Map<Object?, Object?>;
      final docErrorObj = result['errorObj'] as Map<Object?, Object?>;
      if (docErrorObj.isNotEmpty) {
        log('Error: $docErrorObj');
        var errorCode = docErrorObj['errorCode'];
        if (errorCode == 3) {
          Get.back();
        } else {
          isRetakeFrontDocument = false;
          isRetakeBackDocument = true;
          isRetakeFace = false;
          showWidgetError(content: errorEkycBack);
        }
      } else {
        log('Success: $docResultObj');
        // var apiResult = docResultObj['apiResult']; //{}
        // if (apiResult == '{}') {
        //   isRetakeFrontDocument = false;
        //   isRetakeBackDocument = true;
        //   isRetakeFace = false;
        //   showWidgetError(content: errorEkycBack);
        // } else {
        // Map<String, dynamic> dataDynamic = json.decode(apiResult.toString());
        isShowErrorWidget.value = false;
        isShowErrorWidget.refresh();
        var responeBackData = await _ekycRepo.getOcrFromHyperverge(
            appID: appID,
            appKey: appKey,
            pathImg: docResultObj['imageUri'].toString());
        if (responeBackData.statusCode == '200') {
          if (isCMND) {
            if ((responeBackData.result?.details?[0].type ?? '') ==
                'cmnd_old_back') {
              documentBackUri = docResultObj['imageUri'].toString();
              ocrData.doi = responeBackData
                      .result?.details?[0].fieldsExtracted?.doi?.value ??
                  '';
              ocrData.placeOfIssue = responeBackData.result?.details?[0]
                      .fieldsExtracted?.placeOfIssue?.value ??
                  '';
              offWidgetError();
              _startFaceCapture();
            } else {
              isRetakeFrontDocument = false;
              isRetakeBackDocument = true;
              isRetakeFace = false;
              showWidgetError(
                  content: 'Mặt sau không phải là chứng minh nhân dân');
            }
          } else {
            if ((responeBackData.result?.details?[0].type ?? '') ==
                    'cccd_chip_back' ||
                (responeBackData.result?.details?[0].type ?? '') ==
                    'cccd_back' ||
                (responeBackData.result?.details?[0].type ?? '') ==
                    'cmnd_new_cccd_back') {
              documentBackUri = docResultObj['imageUri'].toString();
              ocrData.doi = responeBackData
                      .result?.details?[0].fieldsExtracted?.doi?.value ??
                  '';
              ocrData.placeOfIssue = responeBackData.result?.details?[0]
                      .fieldsExtracted?.placeOfIssue?.value ??
                  '';
              offWidgetError();
              _startFaceCapture();
            } else {
              isRetakeFrontDocument = false;
              isRetakeBackDocument = true;
              isRetakeFace = false;
              showWidgetError(
                  content: 'Mặt sau không phải là căn cước công dân');
            }
          }
        } else {
          isRetakeFrontDocument = false;
          isRetakeBackDocument = true;
          isRetakeFace = false;
          ////////////////
          showWidgetError(content: errorEkycBack);
        }
      }
    });
    //  }
  }

  void _startFaceCapture() async {
    // final faceCapture = FinOSEkycFaceCapture()
    //   ..faceCaptureSetShouldShowCameraSwitchButton(false)
    //   ..faceCaptureSetShouldShowInstructionPage(false)
    //   ..faceCaptureSetShowTrustLogos(false)
    //   ..faceCaptureSetLivenessAPIHeaders(
    //     {
    //       'x-finos-api-key': '02b287c8-f68b-44b3-96ca-9f7d19ffe877',
    //     },
    //   );
    //final result = await faceCapture.faceCaptureStart();
    // HVFaceCapture.faceCaptureSetFaceCaptureTitle('xxxxx');
    // HVFaceCapture.faceCaptureSetFaceCaptureSubTitle('faceCaptureSubTitle');
    await HyperSnapSDK.startUserSession('abcd1234').then((didStart) async {
      HVFaceCapture.faceCaptureSetUIStrings({
        'faceCaptureTitle': 'Chụp khuôn mặt',
        'faceCaptureSubtitle':
            'Hình ảnh cần rõ ràng, không bị mờ và cắt góc. Hình ảnh bắt buộc phải xoay dọc.',
      });
      var result = await HVFaceCapture.faceCaptureStart();
      final docResultObj = result['resultObj'] as Map<Object?, Object?>;
      final docErrorObj = result['errorObj'] as Map<Object?, Object?>;
      if (docErrorObj.isNotEmpty) {
        log('Error: $docErrorObj');
        var errorCode = docErrorObj['errorCode'];
        if (errorCode == 3) {
          Get.back();
        } else {
          isRetakeFrontDocument = false;
          isRetakeBackDocument = false;
          isRetakeFace = true;
          showWidgetError(content: errorComapre);
        }
      } else {
        log('Success: $docResultObj');
        var apiResult = docResultObj['apiResult']; //{}
        if (apiResult == '{}') {
          isRetakeFrontDocument = false;
          isRetakeBackDocument = false;
          isRetakeFace = true;
          showWidgetError(content: errorComapre);
        } else {
          Map<String, dynamic> dataDynamic = json.decode(apiResult.toString());
          var responeCaptureFace = CaptureFaceResponse.fromJson(dataDynamic);
          if (responeCaptureFace.statusCode == '200') {
            faceUri = docResultObj['imageUri'].toString();
            if ((responeCaptureFace.result?.summary?.action ?? '') == 'pass') {
              offWidgetError();
              _startFaceCompare();
            } else {
              isRetakeFrontDocument = false;
              isRetakeBackDocument = false;
              isRetakeFace = true;
              showWidgetError(content: errorComapre);
            }
          } else {
            isRetakeFrontDocument = false;
            isRetakeBackDocument = false;
            isRetakeFace = true;
            showWidgetError(content: errorComapre);
          }
        }
      }
    });
  }

  void _startFaceCompare() async {
    // final result = await makeFaceMatchCall(
    //   faceUri,
    //   documentFrontUri,
    //   {},
    //   {'x-finos-api-key': '02b287c8-f68b-44b3-96ca-9f7d19ffe877'},
    // );
    // final docResultObj = result['resultObj'] as Map<Object?, Object?>;
    // final docErrorObj = result['errorObj'] as Map<Object?, Object?>;
    // if (docErrorObj.isNotEmpty) {
    //   log('Error: $docErrorObj');
    //   if (Platform.isAndroid) {
    //     isRetakeFrontDocument = false;
    //     isRetakeBackDocument = false;
    //     isRetakeFace = true;
    //     showWidgetError(content: errorComapre);
    //   } else {
    //     ocrData.pathFrontDocument = documentFrontUri;
    //     ocrData.pathBackDocument = documentBackUri;
    //     ocrData.pathFace = faceUri;
    //     unawaited(Get.off(() => ConfirmScreen(), arguments: ocrData));
    //   }
    // } else {
    //   var apiResult = docResultObj['apiResult']; //{}
    //   if (apiResult == '{}') {
    //     isRetakeFrontDocument = false;
    //     isRetakeBackDocument = false;
    //     isRetakeFace = true;
    //     showWidgetError(content: errorComapre);
    //   } else {
    //     // Map<String, dynamic> dataDynamic = json.decode(apiResult.toString());
    //     // var responeCompareFace = CompareFaceResponse.fromJson(dataDynamic);
    //     // if (responeCompareFace.statusCode == '200') {
    //     //   if ((responeCompareFace.result?.match_score ?? 0) > 70) {
    //     //     ocrData.pathFrontDocument = documentFrontUri;
    //     //     ocrData.pathBackDocument = documentBackUri;
    //     //     ocrData.pathFace = faceUri;
    //     //     unawaited(Get.off(() => ConfirmScreen(), arguments: ocrData));
    //     //   } else {
    //     //     isRetakeFrontDocument = false;
    //     //     isRetakeBackDocument = false;
    //     //     isRetakeFace = true;
    //     //     showWidgetError(content: errorComapre);
    //     //   }
    //     //   // ocrData.pathFrontDocument = documentFrontUri;
    //     //   // ocrData.pathBackDocument = documentBackUri;
    //     //   // ocrData.pathFace = faceUri;
    //     //   // unawaited(Get.off(() => ConfirmScreen(), arguments: ocrData));
    //     // } else {
    //     //   isRetakeFrontDocument = false;
    //     //   isRetakeBackDocument = false;
    //     //   isRetakeFace = true;
    //     //   showWidgetError(content: errorComapre);
    //     // }
    //   }
    // }

    var responeCompareFace = await _ekycRepo.compareFaceFromHyperverge(
        appID: appID,
        appKey: appKey,
        pathSelfie: faceUri,
        pathDocument: documentFrontUri);
    if (responeCompareFace.statusCode == '200') {
      if ((responeCompareFace.result?.match_score ?? 0) > 70) {
        ocrData.pathFrontDocument = documentFrontUri;
        ocrData.pathBackDocument = documentBackUri;
        ocrData.pathFace = faceUri;
        unawaited(Get.off(() => ConfirmScreen(), arguments: ocrData));
      } else {
        isRetakeFrontDocument = false;
        isRetakeBackDocument = false;
        isRetakeFace = true;
        showWidgetError(content: errorComapre);
      }
      // ocrData.pathFrontDocument = documentFrontUri;
      // ocrData.pathBackDocument = documentBackUri;
      // ocrData.pathFace = faceUri;
      // unawaited(Get.off(() => ConfirmScreen(), arguments: ocrData));
    } else {
      isRetakeFrontDocument = false;
      isRetakeBackDocument = false;
      isRetakeFace = true;
      showWidgetError(content: errorComapre);
    }
  }

  void retakeDocument() {
    if (isRetakeFrontDocument) {
      _startFrontCapture();
    } else if (isRetakeBackDocument) {
      _startBackCapture();
    } else if (isRetakeFace) {
      _startFaceCapture();
    }
  }

  void showWidgetError({required String content}) {
    isShowErrorWidget.value = true;
    contentError.value = content;
    isShowErrorWidget.refresh();
    contentError.refresh();
  }

  void offWidgetError() {
    isShowErrorWidget.value = false;
    isShowErrorWidget.refresh();
  }
}
