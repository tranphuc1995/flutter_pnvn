import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_social_feed/controller/social_feed_controller.dart';
import 'package:pnvn_social_feed/generated_images.dart';
import 'package:pnvn_social_feed/model/comment_data.dart';
import 'package:pnvn_social_feed/model/video_data.dart';
import 'package:social_feed_repository/repo/social_feed_repo.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CommentBottomSheet extends StatelessWidget {
  var isActiveButton = false.obs;
  final _controller = TextEditingController();
  final _scrollController = ScrollController();
  var currentComment = ''.obs;
  var contentError = ''.obs;
  var isLoadingButton = false.obs;
  var isLoading = true.obs;
  var id = '';
  var totalComment = 0;
  var totalCommentObs = 0.obs;
  var comments = <CommentData>[].obs;
  var page = 1;
  var pageSize = 10;
  var isLoadMore = false;
  var lastComment = '';
  ValueSetter<bool> callBackAddNewComment;
  var timeClick = 0;
  VideoData videoData;

  final SocialFeedRepo _socialFeedRepo = Get.find();
  CommentBottomSheet(
      {required this.id,
      required this.totalComment,
      required this.callBackAddNewComment,
      required this.videoData});

  @override
  Widget build(BuildContext context) {
    totalCommentObs.value = totalComment;
    Future.delayed(const Duration(milliseconds: 500), () {
      _loadComment();
    });
    _scrollController.addListener(() async {
      if (_scrollController.position.atEdge) {
        var isTop = _scrollController.position.pixels == 0;
        if (isTop) {
        } else {
          if (isLoadMore) {
            isLoadMore = false;
            comments.add(CommentData(
                avatar: '', name: '', time: '', content: '', type: 1));
            comments.refresh();
            Future.delayed(const Duration(milliseconds: 100), () {
              if (_scrollController.hasClients) {
                if (_scrollController.hasClients) {
                  _scrollController.animateTo(
                      _scrollController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                }
              }
            });
            page += 1;
            Future.delayed(const Duration(milliseconds: 500), () async {
              await _loadComment();
            });
          }
        }
      }
    });
    return Container(
      margin: EdgeInsets.only(top: AppConfig.statusBasHeight + 100),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
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
                          child: Obx(() => Text(
                              totalCommentObs.value == 0
                                  ? 'Bình luận'
                                  : '${totalCommentObs.value} bình luận',
                              style: FontUtils.getAppFont(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  textColor: AppColor.colorTitleBottomSheet)))),
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
                Obx(() => isLoading.value
                    ? _buildShimmerLoading()
                    : (comments.isEmpty
                        ? Expanded(child: _buildUiNoComment())
                        : Expanded(
                            child: SingleChildScrollView(
                              controller: _scrollController,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Column(
                                children: comments.map((comment) {
                                  if (comment.type == 0) {
                                    return _buildItemComment(
                                        commentData: comment);
                                  } else {
                                    return Container(
                                      padding: const EdgeInsets.only(top: 5),
                                      color: Colors.white,
                                      height: 40,
                                      width: double.infinity,
                                      child: const SpinKitRing(
                                        color: AppColor.primary,
                                        size: 30,
                                        lineWidth: 2,
                                      ),
                                    );
                                  }
                                }).toList(),
                              ),
                            ),
                          )))
              ],
            ),
          ),
          _buildBottomSendComment(context: context)
        ],
      ),
    );
  }

  Widget _buildShimmerLoading() {
    return Column(
      children: [
        _buildItemLoading(),
        const SizedBox(
          height: 16,
        ),
        _buildItemLoading(),
        const SizedBox(
          height: 16,
        ),
        _buildItemLoading(),
        const SizedBox(
          height: 16,
        ),
        _buildItemLoading(),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget _buildItemLoading() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppShimmer.buildShimmerCircle(
            height: 34,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppShimmer.buildShimmerRectangel(height: 15, width: 80),
                const SizedBox(
                  height: 4,
                ),
                AppShimmer.buildShimmerRectangel(height: 10, width: 100),
                const SizedBox(
                  height: 7,
                ),
                AppShimmer.buildShimmerRectangel(height: 20, width: 250),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottomSendComment({required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
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
                          currentComment.value = text.trim();
                          currentComment.refresh();
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
            child: Obx(() => InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (currentComment.value != '') {
                      if (currentComment.value != lastComment) {
                        lastComment = currentComment.value;
                        var response = await _socialFeedRepo.sendComment(
                            idVideo: id, comment: currentComment.value);
                        if (response.metaData?.status == 'fail') {
                          if (DateTime.now().millisecondsSinceEpoch -
                                  timeClick >
                              3000) {
                            timeClick = DateTime.now().millisecondsSinceEpoch;
                            await showError(
                                content: response.metaData?.message ?? '',
                                context: context);
                          }
                        } else {
                          _controller.clear();
                          callBackAddNewComment(true);
                          totalCommentObs.value = totalCommentObs.value + 1;
                          totalCommentObs.refresh();
                          currentComment.value = '';
                          currentComment.refresh();
                          page = 1;
                          comments.clear();
                          isLoading.value = true;
                          isLoading.refresh();
                          await _loadComment();
                        }
                      } else {
                        if (DateTime.now().millisecondsSinceEpoch - timeClick >
                            3000) {
                          timeClick = DateTime.now().millisecondsSinceEpoch;
                          await showError(
                              content:
                                  'Bạn đã gửi trùng nội dung với bình luận trước. Vui lòng kiểm tra lại.',
                              context: context);
                        }
                      }
                    }
                  },
                  child: Image.asset(
                    currentComment.value == '' ? Ic.icSend : Ic.icSendActive,
                    height: 40,
                    width: 40,
                  ),
                )),
          )
        ],
      ),
    );
  }

  Widget _buildUiNoComment() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Img.bgNoComment,
          height: 108,
          width: 120,
        ),
        const SizedBox(
          height: 22,
        ),
        Text('Chưa có bình luận.\nHãy trở thành người đầu tiên.',
            textAlign: TextAlign.center,
            style: FontUtils.getAppFont(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                textColor: AppColor.colorNBlack)),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget _buildItemComment({required CommentData commentData}) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(17)),
              child: CachedNetworkImage(
                height: 34,
                width: 34,
                fit: BoxFit.cover,
                imageUrl: commentData.avatar,
                placeholder: (context, url) => Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.5),
                ),
                errorWidget: (context, url, error) => Image.asset(
                  Img.imgDefaultAvatar,
                  height: 34,
                  width: 34,
                ),
              )),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(commentData.name,
                    style: FontUtils.getAppFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        textColor: AppColor.colorN100)),
                Text(commentData.time,
                    style: FontUtils.getAppFont(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        textColor: AppColor.colorN300)),
                const SizedBox(
                  height: 4,
                ),
                Text(commentData.content,
                    style: FontUtils.getAppFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: AppColor.colorN200)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> _loadComment() async {
    var response = await _socialFeedRepo.loadComment(
        idVideo: id, page: page.toString(), pageSize: pageSize.toString());
    if ((response.data?.length ?? 0) < pageSize) {
      isLoadMore = false;
    } else {
      isLoadMore = true;
    }
    if (page >= 2) {
      comments.removeLast();
    }
    for (var i = 0; i < (response.data?.length ?? 0); i++) {
      var comment = CommentData(
        avatar: response.data?[i].avatar ?? '',
        name: response.data?[i].nickName ?? '',
        time: parseTime(time: response.data?[i].createdDate ?? ''),
        content: response.data?[i].comment ?? '',
        type: 0,
      );
      comments.add(comment);
    }
    comments.refresh();
    isLoading.value = false;
    isLoading.refresh();
  }

  String parseTime({required String time}) {
    var result = '';
    var newYear = '';
    var newMonth = '';
    var newDay = '';
    var newHour = '';
    var newMinute = '';
    var date = DateTime.parse(time + ' Z').toUtc().toLocal();
    newYear = date.year.toString();
    if ((date.month) < 10) {
      newMonth = '0' + (date.month.toString());
    } else {
      newMonth = date.month.toString();
    }
    if ((date.day) < 10) {
      newDay = '0' + (date.day.toString());
    } else {
      newDay = date.day.toString();
    }
    if (date.hour < 10) {
      newHour = '0' + date.hour.toString();
    } else {
      newHour = date.hour.toString();
    }
    if (date.minute < 10) {
      newMinute = '0' + date.minute.toString();
    } else {
      newMinute = date.minute.toString();
    }
    result = '$newHour:$newMinute $newDay-$newMonth-$newYear';
    return result;
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
          SocialFeedController.currentVideoData = videoData;
          Get.offAllNamed(DeeplinkConstant.loginScreen);
        },
        title: 'Yêu cầu đăng nhập');
  }
}
