import 'dart:developer';

import 'package:core/const/app_config.dart';
import 'package:get/get.dart';
import 'package:pnvn_home_tab/controller/tab_screen_controller.dart';
import 'package:pnvn_social_feed/model/video_data.dart';
import 'package:pnvn_social_feed/widgets/comment_bottom_sheet.dart';
import 'package:pnvn_social_feed/widgets/input_nickname_bottom_sheet.dart';
import 'package:social_feed_repository/repo/social_feed_repo.dart';
import 'package:video_player/video_player.dart';

class VideoWidgetController extends GetxController {
  final SocialFeedRepo _socialFeedRepo = Get.find();
  VideoPlayerController? videoController;
  var isLoading = true.obs;
  var isPlayingVideo = true.obs;
  var isInitSuccessVideo = false.obs;
  var likeCount = 0.obs;
  var commentCount = 0.obs;
  var isLikedVideo = false.obs;
  //retry video
  var videoIDRetry = '';
  var idRetry = '';
  var authorNameRetry = '';
  var indexVideoRetry = 0;
  var currentPageRetry = 0;
  // track video
  var trackVideo = true;
  var isPlayForwardVideo = false;
  var currentPosition = 0;
  late VideoData videoData;

  //final SocialFeedRepo _socialFeedRepo = Get.find();

  Future<void> initVideo({
    required String videoID,
    required String id,
    required String authorName,
    required int indexVideo,
    required int currentPage,
  }) async {
    try {
      isLoading.value = true;
      isLoading.refresh();
      videoIDRetry = videoID;
      idRetry = id;
      authorNameRetry = authorName;
      indexVideoRetry = indexVideo;
      currentPageRetry = currentPage;
      var responseUrl = await _socialFeedRepo.getUrlVideo(
          videoID: videoID, authorName: authorName);
      if (responseUrl.statusCode == 10204) {
        await _socialFeedRepo.deleteVideo(videoID: id);
      }
      videoController = VideoPlayerController.network(responseUrl.linkUrl);
      videoController!.addListener(() {
        if (videoController!.value.position.inSeconds > currentPosition) {
          isPlayForwardVideo = true;
        } else {
          isPlayForwardVideo = false;
        }
        currentPosition = videoController!.value.position.inSeconds;
        if (videoController!.value.position.inSeconds == 1) {
          if (trackVideo) {
            if (isPlayForwardVideo) {
              trackViewVideo(videoID: id);
              trackVideo = false;
            }
          }
        } else {
          trackVideo = true;
        }
      });
      await videoController?.setLooping(true);
      await videoController?.initialize().then((value) async {
        isInitSuccessVideo.value =
            videoController?.value.isInitialized ?? false;
        log('debug_phuc2: init video ${isInitSuccessVideo.value} ${indexVideo.toString()} currentPage: $currentPage');
        if (indexVideo == currentPage) {
          if (indexVideo == 0 && TabScreenController.currentTab != 1) {
            pauseVideo();
          } else {
            playVideo(id: '');
          }
        } else {
          pauseVideo();
        }

        var videoDetailResponse = await _socialFeedRepo.getVideoDetail(id: id);
        //await _socialFeedRepo.addViewHistory(videoID: id);
        isLoading.value = false;
        likeCount.value = videoDetailResponse.data?.likeCount ?? 0;
        commentCount.value = videoDetailResponse.data?.commentCount ?? 0;
        isLikedVideo.value = videoDetailResponse.data?.isLiked ?? false;
        isLikedVideo.refresh();
        likeCount.refresh();
        commentCount.refresh();
        isLoading.refresh();
        //    isPlayingVideo.refresh();
        isInitSuccessVideo.refresh();
      });
    } catch (e) {
     
      isInitSuccessVideo.value = false;
      isLoading.value = false;
      isInitSuccessVideo.refresh();
      isLoading.refresh();
      // await initVideo(
      //     videoID: videoIDRetry,
      //     id: idRetry,
      //     authorName: authorNameRetry,
      //     indexVideo: indexVideoRetry,
      //     currentPage: currentPageRetry,
      //     linkPlayVideo: '');
      //callBackErrorVideo(true);
    }
  }

  void playPauseVideo() {
    if (videoController?.value.isPlaying ?? false) {
      isPlayingVideo.value = false;
      videoController?.pause();
    } else {
      isPlayingVideo.value = true;
      videoController?.play();
    }
    isPlayingVideo.refresh();
  }

  void pauseVideo() {
    isPlayingVideo.value = true;
    isPlayingVideo.refresh();
    videoController?.pause();
  }

  void playVideo({required String id}) {
    if (currentPosition >= 1) {
      if (id != '') {
        trackViewVideo(videoID: id);
      }
    }
    isPlayingVideo.value = true;
    isPlayingVideo.refresh();
    videoController?.play();
  }

  void resetVideo() {
    isLoading.value = true;
    isInitSuccessVideo.value = false;
    isLoading.refresh();
    isInitSuccessVideo.refresh();
    //videoController?.pause();
    videoController?.dispose();
  }

  Future<void> likeUnlikeVideo({required String videoID}) async {
    if (isLikedVideo.value) {
      isLikedVideo.value = false;
      likeCount.value -= 1;
    } else {
      isLikedVideo.value = true;
      likeCount.value += 1;
    }
    likeCount.refresh();
    isLikedVideo.refresh();
    await _socialFeedRepo.likeUnlikeVideo(id: videoID);
  }

  void commentVideo({required String id}) {
    // if (AppConfig.currentNickName == '') {
    //   Get.bottomSheet(
    //       InputNickNameBottomSheet(
    //         id: id,
    //         totalComment: commentCount.value,
    //         callBackAddNewComment: (bool value) {
    //           commentCount.value = commentCount.value + 1;
    //           commentCount.refresh();
    //         },
    //       ),
    //       isScrollControlled: true);
    // } else {
    //   Get.bottomSheet(
    //       CommentBottomSheet(
    //         id: id,
    //         totalComment: commentCount.value,
    //         callBackAddNewComment: (bool value) {
    //           commentCount.value = commentCount.value + 1;
    //           commentCount.refresh();
    //         },
    //       ),
    //       isDismissible: true,
    //       isScrollControlled: true);
    // }
    Get.bottomSheet(
        CommentBottomSheet(
          id: id,
          totalComment: commentCount.value,
          callBackAddNewComment: (bool value) {
            commentCount.value = commentCount.value + 1;
            commentCount.refresh();
          },
          videoData: videoData,
        ),
        isDismissible: true,
        isScrollControlled: true);
  }

  Future<void> refreshCountComment({required String id}) async {
    var videoDetailResponse = await _socialFeedRepo.getVideoDetail(id: id);

    likeCount.value = videoDetailResponse.data?.likeCount ?? 0;
    commentCount.value = videoDetailResponse.data?.commentCount ?? 0;
    isLikedVideo.value = videoDetailResponse.data?.isLiked ?? false;
    isLikedVideo.refresh();
    likeCount.refresh();
    commentCount.refresh();
  }

  void trackViewVideo({required String videoID}) {
    _socialFeedRepo.addViewHistory(videoID: videoID).then((value) => null);
  }
}
