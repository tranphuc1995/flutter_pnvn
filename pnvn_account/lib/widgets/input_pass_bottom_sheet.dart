import 'dart:developer';

import 'package:account_repository/repo/account_repo.dart';
import 'package:core/color/app_color.dart';
import 'package:core/const/app_const.dart';
import 'package:core/core.dart';
import 'package:core/widgets/login_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:local_auth/local_auth.dart';
import 'package:pnvn_account/controller/local_auth_controller.dart';
import 'package:pnvn_account/generated_images.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/local_auth_ios.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InputPassBottomSheet extends StatelessWidget {
  var isActiveButton = false.obs;
  ValueSetter<bool> biometricSucess;
  AccountRepo _accountRepo = Get.find();
  var currentPass = '';
  var contentError = ''.obs;
  var isLoadingButton = false.obs;
  InputPassBottomSheet({required this.biometricSucess});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(right: 16),
            height: 57,
            width: double.infinity,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Text('Nhập mật khẩu',
                        style: FontUtils.getAppFont(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            textColor: AppColor.colorTitleBottomSheet))),
                Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(Ic.icX)))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: AppColor.borderColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Text(
                    'Vui lòng nhập mật khẩu hiện tại để kích hoạt đăng nhập bằng vân tay',
                    style: FontUtils.getAppFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: AppColor.colorCategoryNews)),
                const SizedBox(
                  height: 16,
                ),
                Obx(() => LoginFieldWidget(
                      contentError: contentError.value,
                      hintTextField: 'Mật khẩu hiện tại',
                      icon: '',
                      isShowIconEye: true,
                      keyboardType: TextInputType.text,
                      onTextChange: (String value) {
                        currentPass = value;
                        if (value != '') {
                          isActiveButton.value = true;
                        } else {
                          isActiveButton.value = false;
                        }
                        isActiveButton.refresh();
                      },
                    )),
                const SizedBox(
                  height: 16,
                ),
                Obx(() => ButtonWidget(
                      isLoading: isLoadingButton.value,
                      text: 'Tiếp tục',
                      isActive: isActiveButton.value,
                      press: () async {
                        isLoadingButton.value = true;
                        isLoadingButton.refresh();
                        var checkPassResponse = await _accountRepo
                            .checkPassword(password: currentPass);
                        if (checkPassResponse.data?.result ?? false) {
                          Get.back();
                          var result = await LocalAuthentication().authenticate(
                              localizedReason:
                                  'Sử dụng vân tay để xác thực danh tính của bạn',
                              authMessages: const <AuthMessages>[
                                AndroidAuthMessages(
                                    signInTitle: 'Xác thực danh tính của bạn',
                                    cancelButton: 'Huỷ',
                                    biometricNotRecognized: 'cccccc',
                                    biometricHint: '',
                                    biometricRequiredTitle: 'eeeeee',
                                    biometricSuccess: 'ffffffff',
                                    deviceCredentialsRequiredTitle: 'hhhhhh',
                                    deviceCredentialsSetupDescription:
                                        'jjjjjjjj'),
                                IOSAuthMessages(
                                  cancelButton: 'No thanks',
                                ),
                              ],
                              options: const AuthenticationOptions(
                                  useErrorDialogs: false, biometricOnly: true));
                          log('result: ' + result.toString());
                          if (result) {
                            final prefs = await SharedPreferences.getInstance();
                            await prefs.setBool(
                                AppConst.keyIsActiveBiometric, true);
                            biometricSucess(true);
                          }
                        } else {
                          contentError.value =
                              'Mật khẩu không chính xác, vui lòng kiểm tra lại';
                          contentError.refresh();
                        }
                        isLoadingButton.value = false;
                        isLoadingButton.refresh();
                      },
                    )),
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
