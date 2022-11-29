import 'dart:developer';

import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:pnvn_social_feed/controller/social_feed_controller.dart';
import 'package:pnvn_social_feed/generated_images.dart';
import 'package:pnvn_social_feed/model/video_data.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controller/video_widget_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class VideoWidget extends StatelessWidget {
  final VideoWidgetController _videoWidgetController = VideoWidgetController();
  VideoData videoData;
  var lengthText = 100;
  int index;

  VideoWidget({Key? key, required this.videoData, required this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    log('index: $index');
    //initVideo(currentPage: 0);
    _videoWidgetController.videoData = videoData;
    return FocusDetector(
      onFocusLost: () {
        // Android: onPause()
        // iOS: viewDidDisappear()
        // _videoWidgetController.pauseVideo();
      },
      onFocusGained: () {
        // Android: onResume()
        // iOS: viewDidAppear()
        //_videoWidgetController.playVideo();
        _videoWidgetController.refreshCountComment(id: videoData.idLikeUnlike);
      },
      child: Obx(() => _videoWidgetController.isLoading.value
          ? Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black,
              child: CachedNetworkImage(
                imageUrl: videoData.imageUrl,
                placeholder: (context, url) => Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.5),
                ),
                fit: BoxFit.cover,
              ),
            )
          : (_videoWidgetController.isInitSuccessVideo.value
              ? Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.black,
                      child: CachedNetworkImage(
                        imageUrl: videoData.imageUrl,
                        placeholder: (context, url) => Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.black,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          _videoWidgetController.playPauseVideo();
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Stack(
                          children: [
                            AspectRatio(
                                aspectRatio: _videoWidgetController
                                        .videoController?.value.aspectRatio ??
                                    0,
                                child: VideoPlayer(
                                    _videoWidgetController.videoController!)),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: _videoWidgetController.isPlayingVideo.value
                          ? Container()
                          : InkWell(
                              onTap: () {
                                _videoWidgetController.playPauseVideo();
                              },
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: SvgPicture.asset(
                                Ic.icPlay,
                                height: 40,
                                width: 40,
                              ),
                            ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 85,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, bottom: 32, top: 32),
                                  width: double.infinity,
                                  // color: Colors.black.withOpacity(0.4),
                                  color: Colors.transparent,
                                  child: videoData.title.length > lengthText
                                      ? ExpandableNotifier(
                                          child: Expandable(
                                            collapsed: ExpandableButton(
                                                child: RichText(
                                              text: TextSpan(
                                                text:
                                                    '@${videoData.authorName} \n \n',
                                                style: FontUtils.getAppFont(
                                                    fontSize: 14,
                                                    textColor: AppColor.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: videoData
                                                                  .title.length >
                                                              lengthText
                                                          ? videoData.title
                                                              .substring(
                                                                  0,
                                                                  lengthText -
                                                                      1)
                                                          : videoData.title,
                                                      style:
                                                          FontUtils.getAppFont(
                                                              fontSize: 14,
                                                              textColor:
                                                                  AppColor
                                                                      .white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                  TextSpan(
                                                      text: videoData.title
                                                                  .length >
                                                              lengthText
                                                          ? '... Xem thêm'
                                                          : '',
                                                      style:
                                                          FontUtils.getAppFont(
                                                              fontSize: 14,
                                                              textColor:
                                                                  AppColor
                                                                      .white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700)),
                                                ],
                                              ),
                                            )),
                                            expanded: ExpandableButton(
                                                child: RichText(
                                              text: TextSpan(
                                                text:
                                                    '@${videoData.authorName} \n \n',
                                                style: FontUtils.getAppFont(
                                                    fontSize: 14,
                                                    textColor: AppColor.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: videoData.title,
                                                      style:
                                                          FontUtils.getAppFont(
                                                              fontSize: 14,
                                                              textColor:
                                                                  AppColor
                                                                      .white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                ],
                                              ),
                                            )),
                                          ),
                                        )
                                      : RichText(
                                          text: TextSpan(
                                            text:
                                                '@${videoData.authorName} \n \n',
                                            style: FontUtils.getAppFont(
                                                fontSize: 14,
                                                textColor: AppColor.white,
                                                fontWeight: FontWeight.w700),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: videoData.title,
                                                  style: FontUtils.getAppFont(
                                                      fontSize: 14,
                                                      textColor: AppColor.white,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                        ),
                                ),
                                _videoWidgetController.videoController?.value
                                            .isInitialized ??
                                        false
                                    ? VideoProgressIndicator(
                                        _videoWidgetController.videoController!,
                                        padding: const EdgeInsets.all(0),
                                        allowScrubbing: true)
                                    : Container(),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 15,
                              child: SizedBox(
                                width: double.infinity,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                          splashColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () {
                                            // if (AppConfig.isGuest) {
                                            //   showDialogRequiredLogin();
                                            // } else {
                                            //   _videoWidgetController
                                            //       .likeUnlikeVideo(
                                            //           videoID: videoData
                                            //               .idLikeUnlike);
                                            // }
                                            _videoWidgetController
                                                .likeUnlikeVideo(
                                                    videoID:
                                                        videoData.idLikeUnlike);
                                          },
                                          child: Obx(() => Image.asset(
                                                _videoWidgetController
                                                        .isLikedVideo.value
                                                    ? Ic.icHeartActive
                                                    : Ic.icHeart,
                                                width: 20,
                                                height: 20,
                                              ))),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Obx(() => Text(
                                          _videoWidgetController.likeCount.value
                                              .toString(),
                                          style: FontUtils.getAppFont(
                                              fontSize: 14,
                                              textColor: AppColor.white,
                                              fontWeight: FontWeight.w400))),
                                      const SizedBox(
                                        height: 25,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            // if (AppConfig.isGuest) {
                                            //   showDialogRequiredLogin();
                                            // } else {
                                            //   _videoWidgetController
                                            //       .commentVideo(
                                            //           id: videoData
                                            //               .idLikeUnlike);
                                            // }
                                            _videoWidgetController.commentVideo(
                                                id: videoData.idLikeUnlike);
                                          },
                                          child:
                                              SvgPicture.asset(Ic.icComment)),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Obx(() => Text(
                                          _videoWidgetController
                                              .commentCount.value
                                              .toString(),
                                          style: FontUtils.getAppFont(
                                              fontSize: 14,
                                              textColor: AppColor.white,
                                              fontWeight: FontWeight.w400))),
                                      const SizedBox(
                                        height: 25,
                                      ),
                                    ]),
                              ))
                        ],
                      ),
                    )
                  ],
                )
              : _buildUIErrorVideo())),
    );
  }

  void resetVideo() {
    _videoWidgetController.resetVideo();
  }

  void muteVideo() {
    if (_videoWidgetController.videoController != null) {
      _videoWidgetController.videoController?.setVolume(0);
      _videoWidgetController.videoController?.pause();
      _videoWidgetController.isPlayingVideo.value = false;
      _videoWidgetController.isPlayingVideo.refresh();
    }
  }

  void unMuteVideo() {
    if (_videoWidgetController.videoController != null) {
      _videoWidgetController.videoController?.setVolume(1);
      _videoWidgetController.videoController?.play();
      _videoWidgetController.isPlayingVideo.value = true;
      _videoWidgetController.isPlayingVideo.refresh();
    }
  }

  void initVideo({required int currentPage}) {
    _videoWidgetController.initVideo(
      authorName: videoData.authorName,
      id: videoData.idLikeUnlike,
      videoID: videoData.videoID,
      indexVideo: index,
      currentPage: currentPage,
    );
  }

  bool isInitVideo() {
    return _videoWidgetController.isInitSuccessVideo.value;
  }

  void playVideo({required String id}) {
    _videoWidgetController.playVideo(id: id);
  }

  void pauseVideo() {
    _videoWidgetController.pauseVideo();
  }

  void showThumbnail() {
    _videoWidgetController.isLoading.value = true;
    _videoWidgetController.isLoading.refresh();
  }

  Widget _buildUIErrorVideo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Img.imgErrorVideo,
            width: 124,
            height: 103,
          ),
          const SizedBox(
            height: 25,
          ),
          Text('Có lỗi xảy ra!',
              style: FontUtils.getAppFont(
                  fontSize: 18,
                  textColor: AppColor.white,
                  fontWeight: FontWeight.w700)),
          const SizedBox(
            height: 4,
          ),
          Text('Vui lòng xem video khác',
              style: FontUtils.getAppFont(
                  fontSize: 16,
                  textColor: AppColor.white,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
