import 'dart:async';

import 'package:core/core.dart';
import 'package:ekyc_repository/ekyc_repository.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pnvn_ekyc/screen/capture_document_screen.dart';

class ChooseDocumentController extends GetxController {
  final EkycRepo _ekycRepo = Get.find();
  void moveToEkyc({required bool isCMND}) {
    _checkPermissionCamera(isCMND: isCMND);
  }

  void _checkPermissionCamera({required bool isCMND}) async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      unawaited(Get.to(() => CaptureDocumentScreen(), arguments: isCMND));
    } else if (status.isPermanentlyDenied) {
      showBottomSheetHelper(
          botttomSheetType: BotttomSheetType.permissionCamera);
    } else if (status.isDenied) {
      var newStatus = await Permission.camera.request();
      if (newStatus.isGranted) {
        unawaited(Get.to(() => CaptureDocumentScreen(), arguments: isCMND));
      } else {
        showBottomSheetHelper(
            botttomSheetType: BotttomSheetType.permissionCamera);
      }
    }
  }

  void moveToEkycCmnd() {}
}
