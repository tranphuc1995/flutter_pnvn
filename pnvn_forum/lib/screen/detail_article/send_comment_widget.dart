import 'package:core/color/app_color.dart';
import 'package:core/const/app_config.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:core/router/deeplink_constant.dart';
import 'package:core/widgets/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pnvn_forum/controller/detail_article_controller.dart';
import 'package:pnvn_forum/generated_images.dart';
import 'package:flash/flash.dart';
import 'package:flutter_svg/svg.dart';

class SendCommentWidget extends StatelessWidget {
  DetailArticleController detailArticleController;
  String postID;
  final _controller = TextEditingController();
  var currentTextInput = ''.obs;
  SendCommentWidget(
      {required this.detailArticleController, required this.postID});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 2,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          AppConfig.isGuest
              ? Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                      showDialogRequiredLogin();
                    },
                    child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        height: 40,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: AppColor.borderColor,
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)), // Set rounded corner radius
                        ),
                        child: Text(
                          'Bạn có điều muốn nói?',
                          style: FontUtils.getAppFont(
                              fontSize: 16,
                              textColor: AppColor.inactiveColor,
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                )
              : Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 2),
                    height: 40,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColor.borderColor,
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)), // Set rounded corner radius
                    ),
                    child: TextFormField(
                        controller: _controller,
                        onChanged: (text) {
                          currentTextInput.value = text.trim();
                          currentTextInput.refresh();
                        },
                        keyboardType: TextInputType.text,
                        style: FontUtils.getAppFont(
                            fontSize: 16,
                            textColor: AppColor.colorTitleNews,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            isDense: true,
                            hintText: 'Bạn có điều muốn nói? ',
                            hintStyle: FontUtils.getAppFont(
                                fontSize: 16,
                                textColor: AppColor.inactiveColor,
                                fontWeight: FontWeight.w400))),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (currentTextInput.value != '') {
                  await detailArticleController.sendComment(
                      postID: postID,
                      comment: currentTextInput.value,
                      isSuccess: (isSuccess) {
                        currentTextInput.value = '';
                        _controller.clear();
                        if (isSuccess == '') {
                          detailArticleController.reloadComment(postID: postID);
                        } else {
                          showError(content: isSuccess, context: context);
                        }
                      });
                }
              },
              child: Obx(() => Image.asset(
                    currentTextInput.value != '' ? Ic.icSendActive : Ic.icSend,
                    height: 40,
                    width: 40,
                  )),
            ),
          )
        ],
      ),
    );
  }

  Future<void> showError(
      {required String content, required BuildContext context}) async {
    await showFlash(
      context: context,
      duration: const Duration(seconds: 3),
      builder: (_, c) {
        return Flash.bar(
          barrierDismissible: true,
          controller: c,
          backgroundColor: AppColor.warningLight,
          position: FlashPosition.bottom,
          margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          borderRadius: const BorderRadius.all(Radius.circular(8)),

          // ignore: sort_child_properties_last
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            height: 68,
            width: double.infinity,
            alignment: Alignment.center,
            child: Row(children: [
              SvgPicture.asset(Ic.icWarning),
              const SizedBox(
                width: 18,
              ),
              Expanded(
                  child: Text(
                content,
                style: FontUtils.getAppFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    textColor: AppColor.colorTitleNews),
              )),
              const SizedBox(
                width: 12,
              ),
              SvgPicture.asset(
                Ic.icX,
                width: 10,
                height: 10,
              )
            ]),
          ),
          borderColor: Colors.transparent,
          brightness: Brightness.light,
        );
      },
    );
  }

  void showDialogRequiredLogin() {
    showBtSheetHelper(
        content:
            'Bạn đang ở trạng thái khách. Vui lòng đăng nhập tài khoản để sử dụng tính năng này.',
        contentButton: 'Đăng nhập',
        image: Img.icRequiredLogin,
        isDismissible: true,
        press: () {
          DetailArticleController.currentPostID = postID;
          Get.offAllNamed(DeeplinkConstant.loginScreen);
        },
        title: 'Yêu cầu đăng nhập');
  }
}
