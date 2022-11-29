import 'dart:async';
import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/widgets/login_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';

import '../controller/password_controller.dart';
import '../generated_images.dart';
import '../l10n/generated/l10n.dart';

// ignore: must_be_immutable
class PasswordScreen extends StatelessWidget {
  final PasswordController _passwordController = PasswordController();
  late StreamSubscription<bool> keyboardSubscription;
  final ScrollController _scrollController = ScrollController();
  var phone = Get.arguments as String;

  PasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    var keyboardVisibilityController = KeyboardVisibilityController();
    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      if (visible) {
        // _loginWithPhoneController.checkShowPrivacy(isShowKeyboard: visible);
        // _scrollController.animateTo(100,
        //     duration: const Duration(milliseconds: 300), curve: Curves.ease);
      } else {
        // _loginWithPhoneController.checkShowPrivacy(isShowKeyboard: visible);
        // _scrollController.animateTo(0,
        //     duration: const Duration(milliseconds: 300), curve: Curves.ease);
      }
    });
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.only(top: height, left: 16, right: 16, bottom: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                // physics: const BouncingScrollPhysics(),
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
                      Text(S.of(context).login,
                          style: FontUtils.getAppFont(
                              fontSize: 24,
                              textColor: AppColor.colorTitleNews,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(S.of(context).input_password,
                          style: FontUtils.getAppFont(
                              fontSize: 14,
                              textColor: AppColor.colorCategoryNews,
                              fontWeight: FontWeight.w400)),
                      const SizedBox(
                        height: 24,
                      ),
                      Obx(() => LoginFieldWidget(
                            hintTextField: S.of(context).hint_password,
                            icon: Ic.icLock,
                            keyboardType: TextInputType.text,
                            isShowIconEye: true,
                            contentError:
                                _passwordController.errorMessage.value,
                            onTextChange: (String value) {
                              _passwordController.currentPassword = value;
                              _passwordController.checkValidInputPassword(
                                  password: value);
                            },
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => InkWell(
                          onTap: () => {
                            if (!_passwordController.isLockAccount.value)
                              {
                                Get.toNamed(DeeplinkConstant.otpScreen,
                                    arguments: {
                                      'PHONE_NUMBER': phone,
                                      'FORGOT_PASSWORD': true,
                                      'CHANGE_PASSWORD': false
                                    }),
                              }
                          },
                          child: Text(S.of(context).forgot_pass,
                              style: FontUtils.getAppFont(
                                  fontSize: 16,
                                  textColor:
                                      _passwordController.isLockAccount.value
                                          ? AppColor.grey
                                          : AppColor.primary,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(() => ButtonWidget(
                  text: S.of(context).confirm,
                  isActive: _passwordController.isActiveButton.value,
                  isLoading: _passwordController.isLoadingButton.value,
                  press: () {
                    _passwordController.login(phone: phone);
                  },
                ))
          ],
        ),
      )),
    );
  }
}
