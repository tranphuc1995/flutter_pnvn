import 'dart:developer';

import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_forum/controller/detail_article_controller.dart';
import 'package:pnvn_forum/generated_images.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:pnvn_forum/model/comment_data.dart';
import 'package:pnvn_forum/screen/detail_article/avatar_shimmer.dart';
import 'package:pnvn_forum/screen/detail_article/comment_shimmer.dart';
import 'package:pnvn_forum/screen/detail_article/item_comment.dart';
import 'package:pnvn_forum/screen/detail_article/send_comment_widget.dart';

class DetailArticleScreen extends StatelessWidget {
  var postID = Get.arguments as String;
  final DetailArticleController _detailArticleController =
      DetailArticleController();
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    _detailArticleController.initData(postID: postID);
    _scrollController.addListener(() async {
      if (_scrollController.position.atEdge) {
        var isTop = _scrollController.position.pixels == 0;
        if (isTop) {
        } else {
          if (_detailArticleController.isLoadmore) {
            _detailArticleController.isLoadmore = false;
            _detailArticleController.showUiLoadmore.value = true;
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

            Future.delayed(const Duration(milliseconds: 300), () async {
              await _detailArticleController.loadMoreComment(postID: postID);
            });
          }
        }
      }
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16, right: 16, top: AppConfig.statusBasHeight + 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //icon
                      InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Get.back();
                          },
                          child: SvgPicture.asset(Ic.icBack)),
                      SvgPicture.asset(Ic.icReport),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //avatar
                  Obx(() => _detailArticleController.isLoading.value
                      ? AvatarShimmer()
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Obx(() => ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(16)),
                                      child: (CachedNetworkImage(
                                          height: 32,
                                          width: 32,
                                          fit: BoxFit.cover,
                                          imageUrl: _detailArticleController
                                              .postData.value.avatarUser,
                                          placeholder: (context, url) =>
                                              Container(
                                                height: double.infinity,
                                                width: double.infinity,
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                              ),
                                          errorWidget: (context, url, error) =>
                                              Image.asset(
                                                Img.imgDefaultAvatar,
                                                height: 32,
                                                width: 32,
                                              ))),
                                    )),
                                const SizedBox(
                                  width: 8,
                                ),
                                Obx(() => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            _detailArticleController
                                                .postData.value.categoryName,
                                            style: FontUtils.getAppFont(
                                                fontSize: 12,
                                                textColor:
                                                    AppColor.colorTitleNews,
                                                fontWeight: FontWeight.w400)),
                                        Text(
                                            _detailArticleController
                                                .postData.value.userName,
                                            style: FontUtils.getAppFont(
                                                fontSize: 12,
                                                textColor: AppColor.neutral200,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ))
                              ],
                            ),
                            Obx(() => Text(
                                _detailArticleController.postData.value.time,
                                style: FontUtils.getAppFont(
                                    fontSize: 12,
                                    textColor: AppColor.neutral200,
                                    fontWeight: FontWeight.w400))),
                          ],
                        )),
                  const SizedBox(
                    height: 16,
                  ),
                  //title
                  Obx(() => _detailArticleController.isLoading.value
                      ? AppShimmer.buildShimmerRectangel(
                          height: 48, width: double.infinity)
                      : Text(_detailArticleController.postData.value.title,
                          style: FontUtils.getAppFont(
                              fontSize: 20,
                              textColor: AppColor.colorTitleNews,
                              fontWeight: FontWeight.w700))),
                  const SizedBox(
                    height: 8,
                  ),
                  //content
                  Expanded(
                      child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: SingleChildScrollView(
                        padding: const EdgeInsets.only(bottom: 16),
                        controller: _scrollController,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(() => _detailArticleController.isLoading.value
                                ? Column(
                                    children: [
                                      AppShimmer.buildShimmerRectangel(
                                          height: 24, width: double.infinity),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      AppShimmer.buildShimmerRectangel(
                                          height: 24, width: double.infinity),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      AppShimmer.buildShimmerRectangel(
                                          height: 24, width: double.infinity),
                                      const SizedBox(
                                        height: 6,
                                      )
                                    ],
                                  )
                                : Html(
                                    data: _detailArticleController
                                        .postData.value.description,
                                    style: {
                                        'body': Style(
                                            padding: EdgeInsets.zero,
                                            margin: EdgeInsets.zero)
                                      })),
                            const SizedBox(
                              height: 16,
                            ),
                            // view - comment
                            Obx(() => _detailArticleController.isLoading.value
                                ? AppShimmer.buildShimmerRectangel(
                                    height: 20, width: 150)
                                : Text(
                                    '${_detailArticleController.postData.value.view} Lượt xem  •  ${_detailArticleController.totalComment.value} Bình luận',
                                    style: FontUtils.getAppFont(
                                        fontSize: 14,
                                        textColor: AppColor.neutral100,
                                        fontWeight: FontWeight.w400))),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 0.7,
                              width: double.infinity,
                              color: AppColor.colorLineSpace.withOpacity(0.5),
                            ),
                            Obx(() => _detailArticleController.isLoading.value
                                ? Column(
                                    children: [
                                      CommentShimmer(),
                                      CommentShimmer()
                                    ],
                                  )
                                : Column(
                                    children: _detailArticleController
                                        .commentDatas
                                        .map((commentData) => ItemComment(
                                            commentData: commentData))
                                        .toList(),
                                  )),
                            Obx(() =>
                                _detailArticleController.showUiLoadmore.value
                                    ? Container(
                                        padding: const EdgeInsets.only(
                                            top: 8, bottom: 8),
                                        color: Colors.white,
                                        height: 40,
                                        width: double.infinity,
                                        child: const SpinKitRing(
                                          color: AppColor.primary,
                                          size: 25,
                                          lineWidth: 2,
                                        ),
                                      )
                                    : const SizedBox.shrink())
                          ],
                        )),
                  )),
                ],
              ),
            ),
          ),
          SendCommentWidget(
            detailArticleController: _detailArticleController,
            postID: postID,
          )
        ],
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
