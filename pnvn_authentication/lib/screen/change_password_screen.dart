import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:core/widgets/button_widget.dart';
import 'package:core/widgets/login_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/password_controller.dart';
import '../generated_images.dart';
import 'package:flutter_svg/svg.dart';

import '../l10n/generated/l10n.dart';
import '../widgets/text_validate_password.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);

  final PasswordController _passwordController = PasswordController();

  var phoneNumber = Get.arguments as String;

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
                          Get.back();
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
                      Text(S.of(context).change_password,
                          style: FontUtils.getAppFont(
                              fontSize: 24,
                              textColor: AppColor.colorTitleNews,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(S.of(context).change_password_desc,
                          style: FontUtils.getAppFont(
                              fontSize: 14,
                              textColor: AppColor.colorCategoryNews,
                              fontWeight: FontWeight.w400)),
                      const SizedBox(
                        height: 24,
                      ),
                      Obx(() => LoginFieldWidget(
                          icon: Ic.icLock,
                          hintTextField: S.of(context).current_password,
                          keyboardType: TextInputType.text,
                          isShowIconEye: true,
                          contentError:
                              _passwordController.errorChangePass.value,
                          onTextChange: (String value) {
                            _passwordController.errorChangePass.value = '';
                            _passwordController.currentPassword = value;
                          })),
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
                            _passwordController.newPassword = value;
                            _passwordController.checkValidPassword(
                                value: value);
                          }),
                      const SizedBox(
                        height: 16,
                      ),
                      Obx(
                        () => !_passwordController.isValidatePassword.value
                            ? Padding(
                                padding: const EdgeInsets.only(bottom: 18),
                                child: Column(
                                  children: [
                                    TextValidatePassword(
                                      isValidate: _passwordController
                                          .isValidateCharacters.value,
                                      text: 'Trên 8 ký tự.',
                                    ),
                                    TextValidatePassword(
                                      isValidate: _passwordController
                                          .isValidateDigit.value,
                                      text:
                                          'Ít nhất 1 chữ số (ví dụ: 1,2,3,4,…).',
                                    ),
                                    TextValidatePassword(
                                      isValidate: _passwordController
                                          .isValidateUpCase.value,
                                      text:
                                          'Ít nhất 1 chữ viết hoa (ví dụ: A,B,C,...).',
                                    ),
                                    TextValidatePassword(
                                      isValidate: _passwordController
                                          .isValidateLowerCase.value,
                                      text:
                                          'Ít nhất 1 chữ viết thường (ví dụ: a,b,c,...).',
                                    ),
                                    TextValidatePassword(
                                      isValidate: _passwordController
                                          .isValidateSpecial.value,
                                      text:
                                          'Ít nhất 1 ký tự đặc biệt (ví dụ: !,@,#,%,…).',
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                      Obx(
                        () => LoginFieldWidget(
                            icon: Ic.icLock,
                            hintTextField: S.of(context).re_new_password,
                            keyboardType: TextInputType.text,
                            isShowIconEye: true,
                            contentError:
                                _passwordController.errorMessage.value,
                            onTextChange: (String value) {
                              _passwordController.rePassword = value;
                              _passwordController.checkValidPassword(
                                  value: _passwordController.newPassword);
                            }),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Obx(
                        () => ButtonWidget(
                          text: S.of(context).confirm,
                          isActive: _passwordController.isActiveButton.value,
                          isLoading: _passwordController.isLoadingButton.value,
                          press: () {
                            confirmChangePassword();
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

  void confirmChangePassword() {
    _passwordController.sendOtpChangePassword(currentPhone: phoneNumber);
  }
}
