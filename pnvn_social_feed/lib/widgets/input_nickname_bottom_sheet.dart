import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/widgets/login_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

import 'package:pnvn_social_feed/generated_images.dart';
import 'package:pnvn_social_feed/widgets/comment_bottom_sheet.dart';
import 'package:social_feed_repository/repo/social_feed_repo.dart';

import '../model/video_data.dart';

class InputNickNameBottomSheet extends StatelessWidget {
  var isActiveButton = false.obs;

  var currentNickname = '';
  var contentError = ''.obs;
  var isLoadingButton = false.obs;
  var id = '';
  var totalComment = 0;
  VideoData videoData;
  ValueSetter<bool> callBackAddNewComment;

  final SocialFeedRepo _socialFeedRepo = Get.find();
  InputNickNameBottomSheet(
      {required this.id,
      required this.totalComment,
      required this.callBackAddNewComment,
      required this.videoData});

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
                    child: Text('Tên người dùng',
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
                    'Vui lòng nhập Tên người dùng để sử dụng chức năng Bình luận',
                    style: FontUtils.getAppFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: AppColor.colorCategoryNews)),
                const SizedBox(
                  height: 16,
                ),
                Obx(() => LoginFieldWidget(
                      contentError: contentError.value,
                      hintTextField: 'Tên người dùng',
                      icon: Ic.icPerson,
                      isShowIconEye: false,
                      keyboardType: TextInputType.text,
                      onTextChange: (String value) {
                        currentNickname = value;
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
                        var responseUpdateNickname = await _socialFeedRepo
                            .updateNickname(nickName: currentNickname);
                        if (responseUpdateNickname.metaData?.status == 'ok') {
                          AppConfig.currentNickName = currentNickname;
                          Get.back();
                          await Get.bottomSheet(
                              CommentBottomSheet(
                                id: id,
                                totalComment: totalComment,
                                callBackAddNewComment: callBackAddNewComment,
                                videoData: videoData,
                              ),
                              isScrollControlled: true);
                        } else {
                          contentError.value = responseUpdateNickname
                                  .metaData?.errors?[0].message ??
                              '';
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
  }
}
