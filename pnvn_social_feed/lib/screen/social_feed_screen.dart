import 'dart:async';
import 'dart:developer';
import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/firebase/firebase_analytics_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:pnvn_social_feed/controller/social_feed_controller.dart';
import 'package:get/get.dart';
import 'package:pnvn_social_feed/model/category_data.dart';
import 'package:pnvn_social_feed/model/video_data.dart';
import 'package:pnvn_social_feed/screen/list_hashtag_screen.dart';
import 'package:pnvn_social_feed/screen/search/search_keyword_screen.dart';
import '../generated_images.dart';
import 'package:flutter_svg/svg.dart';

class SocialFeedScreen extends StatelessWidget {
  final SocialFeedController _socialFeedController = SocialFeedController();
  List<VideoData> videoDatas;
  int positionVideo;

  double currentScroll = 0.0;
  Timer? onStopScroll;
  Timer? onStopLoadNewPage;
  var lastPage = 0;
  int currentPage = 0;
  SocialFeedScreen({required this.videoDatas, required this.positionVideo});

  @override
  Widget build(BuildContext context) {
    currentPage = positionVideo;
    _socialFeedController.controller =
        PageController(initialPage: positionVideo);
    _socialFeedController.videoDatas = videoDatas;
    _socialFeedController.initScreenNew(position: positionVideo);
    if (videoDatas.isNotEmpty) {
      _socialFeedController.isLoadMore = false;
    }
    _socialFeedController.videoDatas = videoDatas;
    // _socialFeedController.initScreen(position: positionVideo);
    return FocusDetector(
      onFocusLost: () {
        // Android: onPause()
        // iOS: viewDidDisappear()
        _socialFeedController.videoWidgets[currentPage].pauseVideo();
      },
      onFocusGained: () {
        // Android: onResume()
        // iOS: viewDidAppear()

        _socialFeedController.videoWidgets[currentPage].playVideo(id: '');
        // log event
        FirebaseAnalyticsHandler()
            .logEventPage('SocialFeed', _socialFeedController.loadTime);
      },
      onForegroundLost: () {
        _socialFeedController.videoWidgets[currentPage].pauseVideo();
      },
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          body: Stack(
            children: [
              Obx(() => PageView.custom(
                    physics: CustomPhysics(),
                    controller: _socialFeedController.controller,
                    scrollDirection: Axis.vertical,
                    allowImplicitScrolling: true,
                    onPageChanged: (indexPage) {
                    
                      _socialFeedController.videoWidgets[lastPage].pauseVideo();
                      currentPage = indexPage;
                      if (onStopLoadNewPage != null) {
                        onStopLoadNewPage?.cancel();
                      }
                      if (onStopScroll != null) {
                        onStopScroll?.cancel();
                      }
                      onStopScroll =
                          Timer(const Duration(milliseconds: 400), () {
                        if (indexPage > lastPage) {
                          if (_socialFeedController.videoWidgets[indexPage]
                              .isInitVideo()) {
                            _socialFeedController.videoWidgets[indexPage]
                                .playVideo(
                                    id: _socialFeedController
                                        .videoWidgets[indexPage]
                                        .videoData
                                        .idLikeUnlike);
                          } else {
                            _socialFeedController.videoWidgets[indexPage]
                                .initVideo(currentPage: indexPage);
                          }
                          if ((indexPage + 1) <
                              _socialFeedController.videoWidgets.length) {
                            onStopLoadNewPage =
                                Timer(const Duration(milliseconds: 500), () {
                              if (!_socialFeedController
                                  .videoWidgets[indexPage + 1]
                                  .isInitVideo()) {
                                _socialFeedController
                                    .videoWidgets[indexPage + 1]
                                    .initVideo(currentPage: indexPage);
                              }
                            });
                          }
                        } else {
                          if (_socialFeedController.videoWidgets[indexPage]
                              .isInitVideo()) {
                            _socialFeedController.videoWidgets[indexPage]
                                .playVideo(
                                    id: _socialFeedController
                                        .videoWidgets[indexPage]
                                        .videoData
                                        .idLikeUnlike);
                          } else {
                            _socialFeedController.videoWidgets[indexPage]
                                .initVideo(currentPage: indexPage);
                          }
                          if ((indexPage - 1) >= 0) {
                            onStopLoadNewPage =
                                Timer(const Duration(milliseconds: 500), () {
                              if (!_socialFeedController
                                  .videoWidgets[indexPage - 1]
                                  .isInitVideo()) {
                                _socialFeedController
                                    .videoWidgets[indexPage - 1]
                                    .initVideo(currentPage: indexPage);
                              }
                            });
                          }
                        }
                        if (indexPage ==
                            _socialFeedController.videoWidgets.length - 1) {
                          if (_socialFeedController.isLoadMore) {
                            _socialFeedController.loadMoreVideo(
                                currentPage: indexPage);
                          }
                        }
                        lastPage = indexPage;
                      });
                    },
                    childrenDelegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return _socialFeedController.videoWidgets[index];
                      },
                      childCount: _socialFeedController.videoWidgets.length,
                      // findChildIndexCallback: (Key key) {
                      //   final ValueKey valueKey = key;

                      //   final String data = valueKey.value;

                      //   return items.indexOf(data);
                      // },
                    ),
                  )),
              videoDatas.isEmpty
                  ? Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          //_socialFeedController.muteVideo();
                          Get.to(() => SearchKeywordScreen(), arguments: '');
                          //_socialFeedController.unMuteVideo();
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: 20, top: AppConfig.statusBasHeight + 20),
                          child: SvgPicture.asset(
                            Ic.icSearch,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : Container(),
              videoDatas.isEmpty
                  ? InkWell(
                      onTap: () async {
                        var categoryData = (await Get.to(
                                () => ListHashTagScreen(),
                                arguments: _socialFeedController.categoryID) ??
                            CategoryData(
                                id: '', name: 'Tất cả')) as CategoryData;
                        if (categoryData.id !=
                            _socialFeedController.categoryID) {
                          currentPage = 0;
                          lastPage = 0;
                          _socialFeedController.categoryID = categoryData.id;
                          _socialFeedController.titleCategory.value =
                              categoryData.name;
                          _socialFeedController.titleCategory.refresh();
                          _socialFeedController.loadCategory();
                        } else {
                          // _socialFeedController.unMuteVideo();
                        }
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Container(
                        height: 32,
                        margin: EdgeInsets.only(
                            top: AppConfig.statusBasHeight + 16, left: 16),
                        padding: const EdgeInsets.only(left: 13, right: 18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          Obx(() => Text(
                                _socialFeedController.titleCategory.value,
                                style: FontUtils.getAppFont(
                                    fontSize: 16,
                                    textColor: AppColor.white,
                                    fontWeight: FontWeight.w400),
                              )),
                          const SizedBox(
                            width: 14,
                          ),
                          SvgPicture.asset(
                            Ic.icArrowDown,
                            color: Colors.white,
                          )
                        ]),
                      ),
                    )
                  : Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          //_socialFeedController.resetAllVideo();
                          Get.back();
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: AppConfig.statusBasHeight + 16, left: 16),
                          child: SvgPicture.asset(
                            Ic.icArrowLeft,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  void muteCurrentVideo() {
    _socialFeedController.videoWidgets[currentPage].pauseVideo();
  }

  void unMuteCurrentVideo() {
    _socialFeedController.videoWidgets[currentPage].playVideo(id: '');
  }

  void moveToVideo({required int position}) {
    _socialFeedController.moveToVideo(position: position);
  }

  Future<bool> _onWillPop() async {
    // _socialFeedController.resetAllVideo();
    Get.back();
    return true;
  }
}

class CustomPhysics extends ScrollPhysics {
  const CustomPhysics({ScrollPhysics? parent}) : super(parent: parent);

  @override
  CustomPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomPhysics(parent: buildParent(ancestor));
  }

  @override
  SpringDescription get spring => const SpringDescription(
        mass: 50,
        stiffness: 100,
        damping: 1,
      );
}
