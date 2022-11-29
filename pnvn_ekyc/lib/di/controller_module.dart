import 'package:get/get.dart';
import 'package:pnvn_ekyc/controller/choose_document_controller.dart';
import 'package:pnvn_ekyc/controller/confirm_controller.dart';

void provideController() {
  Get.put(ChooseDocumentController());
  Get.put(ConfirmController());
}
