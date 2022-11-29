import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_ekyc/controller/capture_document_controller.dart';
import 'package:pnvn_ekyc/generated_images.dart';

class ErrorEkycWidget extends StatelessWidget {
  String error;
  CaptureDocumentController captureDocumentController;
  ErrorEkycWidget(
      {required this.error, required this.captureDocumentController});
  @override
  Widget build(BuildContext context) {
    return (Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Img.imgCatpureError,
            height: 120,
            width: 120,
          ),
          const SizedBox(
            height: 24,
          ),
          Text('Hình ảnh không hợp lệ',
              textAlign: TextAlign.center,
              style: FontUtils.getAppFont(
                  fontSize: 18,
                  textColor: AppColor.colorTitleNews,
                  fontWeight: FontWeight.w700)),
          const SizedBox(
            height: 8,
          ),
          Text(error,
              textAlign: TextAlign.center,
              style: FontUtils.getAppFont(
                  fontSize: 14,
                  textColor: AppColor.colorTitleNews,
                  fontWeight: FontWeight.w400)),
          const SizedBox(
            height: 24,
          ),
          ButtonWidget(
            text: 'Chụp lại',
            press: () {
              captureDocumentController.retakeDocument();
            },
          )
        ],
      ),
    ));
  }
}
