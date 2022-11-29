import 'dart:async';
import 'dart:io';

import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:core/widgets/button_widget.dart';
import 'package:core/widgets/login_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:pnvn_authentication/screen/tnc_screen.dart';

import '../controller/login_controller.dart';
import '../generated_images.dart';
import '../l10n/generated/l10n.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final LoginController _loginController = LoginController();
  late StreamSubscription<bool> keyboardSubscription;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var keyboardVisibilityController = KeyboardVisibilityController();
    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      if (visible) {
        _loginController.checkShowPrivacy(isShowKeyboard: visible);
        _scrollController.animateTo(100,
            duration: const Duration(milliseconds: 200), curve: Curves.ease);
      } else {
        _loginController.checkShowPrivacy(isShowKeyboard: visible);
        _scrollController.animateTo(0,
            duration: const Duration(milliseconds: 200), curve: Curves.ease);
      }
    });
    //_loginController.initLoginScreen();
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.only(
            top: AppConfig.statusBasHeight, left: 16, right: 16, bottom: 16),
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Image.asset(
                      Img.bgLogin,
                      width: 126,
                      height: 140,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(S.of(context).welcome,
                        style: FontUtils.getAppFont(
                            fontSize: 24,
                            textColor: AppColor.colorTitleNews,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(S.of(context).input_number,
                        style: FontUtils.getAppFont(
                            fontSize: 14,
                            textColor: AppColor.colorCategoryNews,
                            fontWeight: FontWeight.w400)),
                    const SizedBox(
                      height: 24,
                    ),
                    Obx(() => LoginFieldWidget(
                          hintTextField: S.of(context).hint_phone,
                          icon: Ic.icPhone,
                          keyboardType: TextInputType.number,
                          isShowIconEye: false,
                          maxInput: 10,
                          contentError: _loginController.errorPhone.value,
                          onTextChange: (String value) {
                            _loginController.currentPhone = value;
                            _loginController.checkValidPhone(
                                phone: value, context: context);
                          },
                        )),
                    const SizedBox(
                      height: 18,
                    ),
                    Obx(() => ButtonWidget(
                          isLoading: _loginController.isLoadingButton.value,
                          isActive: _loginController.isActiveButton.value,
                          text: S.of(context).next,
                          press: () {
                            _loginController.checkUserExists();
                          },
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        _loginController.loginBiometric();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Ic.icBiometric),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                              Platform.isAndroid
                                  ? 'Đăng nhập bằng vân tay'
                                  : 'Đăng nhập bằng Face ID',
                              style: FontUtils.getAppFont(
                                  fontSize: 16,
                                  textColor: AppColor.primary,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Obx(() => Align(
                  alignment: Alignment.bottomCenter,
                  child: _loginController.isShowPrivacy.value
                      ? InkWell(
                          onTap: () {
                            Get.to(() => TncScreen());
                          },
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text:
                                  'Bằng việc chọn Tiếp tục, bạn đã đồng ý với\n',
                              style: FontUtils.getAppFont(
                                  fontSize: 12,
                                  textColor: AppColor.colorTitleNews,
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Điều khoản và điều kiện ',
                                    style: FontUtils.getAppFont(
                                        fontSize: 12,
                                        textColor: AppColor.primary,
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: 'của chúng tôi.',
                                    style: FontUtils.getAppFont(
                                        fontSize: 12,
                                        textColor: AppColor.colorTitleNews,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        )
                      : Container(),
                )),
            Positioned(
              top: 26,
              right: 16,
              child: InkWell(
                onTap: () {
                  AppConfig.isGuest = true;
                  unawaited(
                      Get.offAllNamed(DeeplinkConstant.homeTab, arguments: 0));
                },
                child: Text(
                  'Bỏ qua',
                  style: FontUtils.getAppFont(
                      fontSize: 16,
                      textColor: AppColor.primary,
                      fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
