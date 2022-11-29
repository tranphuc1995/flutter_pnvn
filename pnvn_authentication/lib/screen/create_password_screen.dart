import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:core/router/deeplink_constant.dart';
import 'package:core/widgets/button_widget.dart';
import 'package:core/widgets/login_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_authentication/widgets/text_validate_password.dart';
import '../controller/password_controller.dart';
import '../generated_images.dart';
import '../l10n/generated/l10n.dart';

class CreatePasswordScreen extends StatelessWidget {
  CreatePasswordScreen({Key? key}) : super(key: key);

  final PasswordController _passwordController = PasswordController();
  //final PasswordController _passwordController = Get.put(PasswordController());
  var phoneNumber = Get.arguments['PHONE_NUMBER'] as String;
  var isForgotPassword = Get.arguments['FORGOT_PASSWORD'] as bool;
  var otp = Get.arguments['OTP'] as String;

  @override
  Widget build(BuildContext context) {
    _passwordController.resetValidate();
    return GestureDetector(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
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
                          //Get.back();
                          Get.offAllNamed(DeeplinkConstant.loginScreen);
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 26, left: 11),
                          child: SvgPicture.asset(Ic.icArrowLeft),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                          isForgotPassword
                              ? 'Tạo mật khẩu mới'
                              : 'Nhập thông tin',
                          style: FontUtils.getAppFont(
                              fontSize: 24,
                              textColor: AppColor.colorTitleNews,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                          isForgotPassword
                              ? 'Vui lòng nhập mật khẩu mới.'
                              : 'Vui lòng nhập tên người dùng và mật khẩu bạn muốn tạo',
                          style: FontUtils.getAppFont(
                              fontSize: 14,
                              textColor: AppColor.colorCategoryNews,
                              fontWeight: FontWeight.w400)),
                      const SizedBox(
                        height: 24,
                      ),
                      isForgotPassword
                          ? const SizedBox.shrink()
                          : Obx(() => LoginFieldWidget(
                              maxInput: 50,
                              icon: Ic.icAccount,
                              hintTextField: 'Tên người dùng',
                              keyboardType: TextInputType.text,
                              isShowIconEye: false,
                              contentError:
                                  _passwordController.errorNickname.value,
                              onTextChange: (String value) {
                                _passwordController.currentNickname = value;
                                _passwordController.checkValidNickname(
                                    nickName: value);
                              })),
                      isForgotPassword
                          ? const SizedBox.shrink()
                          : const SizedBox(
                              height: 8,
                            ),
                      Obx(() => _passwordController.isShowErrorNickname.value
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Tên người dùng phải đáp ứng các yêu cầu sau:',
                                    style: FontUtils.getAppFont(
                                        fontSize: 14,
                                        textColor: AppColor.colorCategoryNews,
                                        fontWeight: FontWeight.w400)),
                                const SizedBox(
                                  height: 4,
                                ),
                                TextValidatePassword(
                                  isValidate: _passwordController
                                      .isValidFirstConditionNickname.value,
                                  text: 'Dài từ 5 đến 50 ký tự.',
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                TextValidatePassword(
                                  isValidate: _passwordController
                                      .isValidSecondConditionNickname.value,
                                  text:
                                      'Không chứa khoảng trống giữa các ký tự.',
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                TextValidatePassword(
                                  isValidate: _passwordController
                                      .isValidThirdConditionNickname.value,
                                  text:
                                      'Chứa chữ cái, số và chỉ cho phép dấu gạch dưới \"_\"',
                                ),
                              ],
                            )
                          : const SizedBox.shrink()),
                      const SizedBox(
                        height: 16,
                      ),
                      LoginFieldWidget(
                          icon: Ic.icLock,
                          hintTextField: S.of(context).password,
                          keyboardType: TextInputType.text,
                          isShowIconEye: true,
                          contentError: '',
                          onTextChange: (String value) {
                            _passwordController.inputPass = value;
                            _passwordController.currentPassword = value;
                            _passwordController.checkValidPassword(
                                value: value);
                          }),
                      const SizedBox(
                        height: 8,
                      ),
                      Obx(
                        () => !_passwordController.isValidatePassword.value
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Mật khẩu phải bao gồm các ký tự sau:',
                                      style: FontUtils.getAppFont(
                                          fontSize: 14,
                                          textColor: AppColor.colorCategoryNews,
                                          fontWeight: FontWeight.w400)),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  TextValidatePassword(
                                    isValidate: _passwordController
                                        .isValidateCharacters.value,
                                    text: 'Trên 8 ký tự.',
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  TextValidatePassword(
                                    isValidate: _passwordController
                                        .isValidateDigit.value,
                                    text:
                                        'Ít nhất 1 chữ số (ví dụ: 1,2,3,4,…).',
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  TextValidatePassword(
                                    isValidate: _passwordController
                                        .isValidateUpCase.value,
                                    text:
                                        'Ít nhất 1 chữ viết hoa (ví dụ: A,B,C,...).',
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  TextValidatePassword(
                                    isValidate: _passwordController
                                        .isValidateLowerCase.value,
                                    text:
                                        'Ít nhất 1 chữ viết thường (ví dụ: a,b,c,...).',
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  TextValidatePassword(
                                    isValidate: _passwordController
                                        .isValidateSpecial.value,
                                    text:
                                        'Ít nhất 1 ký tự đặc biệt (ví dụ: !,@,#,%,…).',
                                  ),
                                ],
                              )
                            : const SizedBox.shrink(),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Obx(
                        () => LoginFieldWidget(
                          icon: Ic.icLock,
                          hintTextField: S.of(context).re_password,
                          keyboardType: TextInputType.text,
                          isShowIconEye: true,
                          contentError: _passwordController.errorMessage.value,
                          onTextChange: (String value) {
                            _passwordController.inputRepass = value;
                            _passwordController.rePassword = value;
                            _passwordController.checkValidPassword(
                                value: _passwordController.currentPassword);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Obx(
                        () => ButtonWidget(
                          text: S.of(context).confirm,
                          isActive: _passwordController.isActiveButton.value,
                          isLoading: _passwordController.isLoadingButton.value,
                          press: () {
                            confirmPassword();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void confirmPassword() {
    if (isForgotPassword) {
      _passwordController.resetPassword(phone: phoneNumber, otp: otp);
    } else {
      _passwordController.registerUser(phone: phoneNumber, otp: otp);
    }
  }
}
