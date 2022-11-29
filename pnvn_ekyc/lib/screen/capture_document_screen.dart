import 'package:core/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_ekyc/controller/capture_document_controller.dart';
import 'package:pnvn_ekyc/widgets/error_widget.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CaptureDocumentScreen extends StatelessWidget {
  var isCMND = Get.arguments as bool;
  final CaptureDocumentController _captureDocumentController =
      CaptureDocumentController();
  @override
  Widget build(BuildContext context) {
    _captureDocumentController.isCMND = isCMND;
    _captureDocumentController.initFinos();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Obx(
          () => _captureDocumentController.isShowErrorWidget.value
              ? ErrorEkycWidget(
                  error: _captureDocumentController.contentError.value,
                  captureDocumentController: _captureDocumentController)
              : Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white,
                  child: const SpinKitThreeBounce(
                    color: AppColor.primary,
                    size: 25,
                  ),
                ),
        ));
  }
}
