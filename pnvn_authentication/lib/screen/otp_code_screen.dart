import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../controller/otp_code_controller.dart';
import '../controller/password_controller.dart';
import '../generated_images.dart';
import '../l10n/generated/l10n.dart';
import '../widgets/loader_screen.dart';
import '../widgets/resent_button.dart';

class OtpCodeScreen extends StatelessWidget {
  OtpCodeScreen({Key? key}) : super(key: key);

  final _controller = TextEditingController().obs;

  final OtpCodeController _otpController = Get.put(OtpCodeController());
  final PasswordController _passwordController = PasswordController();

  var phoneNumber = Get.arguments['PHONE_NUMBER'] as String;
  var isForgotPassword = Get.arguments['FORGOT_PASSWORD'] as bool;
  var isChangePassword = Get.arguments['CHANGE_PASSWORD'] as bool;
  var currentPassword = Get.arguments['CURRENT_PASSWORD'] as String?;
  var newPassword = Get.arguments['NEW_PASSWORD'] as String?;

  var titleStr = '';
  var descStr = '';

  @override
  Widget build(BuildContext context) {
    var height = Get.statusBarHeight;
    _passwordController.currentPassword = currentPassword ?? '';
    _passwordController.newPassword = newPassword ?? '';
    if (!isChangePassword) {
      _otpController.isForgotPassword = isForgotPassword;

      if (isForgotPassword) {
        _otpController.forgotPassword(currentPhone: phoneNumber);

        titleStr = S.of(context).code_confirm;
        descStr = S.of(context).code_confirm_desc;
      } else {
        _otpController.sendOtpRegister(currentPhone: phoneNumber);

        titleStr = S.of(context).signup_account;
        descStr = S.of(context).signup_account_desc;
      }
    } else {
      titleStr = S.of(context).code_confirm;
      descStr = S.of(context).code_confirm_desc;
    }

    return GestureDetector(
      child: Scaffold(
        body: Padding(
          padding:
              EdgeInsets.only(top: height, left: 16, right: 16, bottom: 24),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                Get.back();
                              },
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 26, left: 11),
                                child: SvgPicture.asset(Ic.icArrowLeft),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Text(titleStr,
                                style: FontUtils.getAppFont(
                                    fontSize: 24,
                                    textColor: AppColor.colorTitleNews,
                                    fontWeight: FontWeight.w700)),
                            const SizedBox(
                              height: 8,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: descStr,
                                    style: FontUtils.getAppFont(
                                        fontSize: 14,
                                        textColor: AppColor.colorCategoryNews,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text: ' $phoneNumber',
                                    style: FontUtils.getAppFont(
                                        fontSize: 14,
                                        textColor: AppColor.colorCategoryNews,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            PinFieldAutoFill(
                              controller: _controller.value,
                              currentCode: _controller.value.text,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: BoxLooseDecoration(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(color: AppColor.primary),
                                radius: const Radius.circular(16),
                                bgColorBuilder:
                                    const FixedColorBuilder(AppColor.white),
                                strokeWidth: 1,
                                gapSpace: 7,
                                strokeColorBuilder: const FixedColorBuilder(
                                    AppColor.neutral400),
                              ),
                              cursor: Cursor(
                                width: 2,
                                height: 25,
                                color: AppColor.primary,
                                radius: const Radius.circular(1),
                                enabled: true,
                              ),
                              onCodeSubmitted: (code) {},
                              onCodeChanged: (code) {
                                if (code?.length == 6) {
                                  vefifyOtp(context, code ?? '');
                                }
                                return code;
                              },
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Obx(() => _otpController.isLockSendOtp.value
                                ? Text(S.of(context).resend_code,
                                    style: const TextStyle(
                                        color: AppColor.grey,
                                        fontWeight: FontWeight.bold))
                                : ResentButton(
                                    press: () => {resendOtp(context)},
                                    expired: 60)),
                            const SizedBox(
                              height: 16,
                            ),
                            Obx(
                              () => Text(_otpController.errorOtp.value,
                                  style: FontUtils.getAppFont(
                                      fontSize: 14,
                                      textColor: AppColor.red,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Obx(() => Visibility(
                    visible: _otpController.isLoading.value,
                    child: const LoaderOverlayScreen(),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void vefifyOtp(BuildContext context, String s) async {
    FocusScope.of(context).requestFocus(FocusNode());
    _otpController.otp = s;

    if (isChangePassword) {
      _otpController.changePassword(
          otp: s,
          currentPassword: _passwordController.currentPassword,
          newPassword: _passwordController.newPassword);
    } else {
      if (isForgotPassword) {
        _otpController.verifyOtpForgotPassword(
            currentPhone: phoneNumber, otp: s);
      } else {
        _otpController.verifyOtpRegister(currentPhone: phoneNumber, otp: s);
      }
    }
  }

  void resendOtp(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());

    if (isChangePassword) {
      _otpController.resendOtpChangePassword(
          currentPhone: phoneNumber,
          currentPassword: _passwordController.currentPassword,
          newPassword: _passwordController.newPassword);
    } else {
      if (isForgotPassword) {
        _otpController.resendOtpForgotPassword(currentPhone: phoneNumber);
      } else {
        _otpController.resendOtpRegister(currentPhone: phoneNumber);
      }
    }
  }
}
