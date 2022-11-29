import 'package:get/get.dart';
import '../controller/login_controller.dart';
import '../controller/otp_code_controller.dart';
import '../controller/password_controller.dart';

void provideController() {
  Get.put(LoginController());
  Get.put(PasswordController());
  Get.put(OtpCodeController());
}
