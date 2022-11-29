import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pnvn_social_feed/model/video_data.dart';
import 'package:pnvn_social_feed/widgets/video_widget.dart';
import 'package:social_feed_repository/social_feed_repository.dart';

class SocialFeedController extends GetxController {
  final SocialFeedRepo _socialFeedRepo = Get.find();
  var controller = PageController(initialPage: 0);
  var currentIndexVideo = 0;
  var currentIndexPage = 0;

  var categoryID = '';
  var videoDatas = <VideoData>[];
  var isScrollNextVideo = true;

  var titleCategory = 'Tất cả'.obs;

  var pageNumber = 1;
  var pageSize = 20;
  var isLoadMore = true;
  var isLoadThumbnail = true;
  var loadTime = 0;

  var videoWidgets = <VideoWidget>[].obs;
  static var currentVideoData =
      VideoData(authorName: '', idLikeUnlike: '', title: '', videoID: '');

  Future<void> initScreenNew({required int position}) async {
    if (categoryID == '' && videoWidgets.isNotEmpty) {
      controller.jumpToPage(position);
    } else {
      categoryID = '';
      titleCategory.value = 'Tất cả';
      titleCategory.refresh();
      pageNumber = 1;
      if (videoDatas.isEmpty) {
        videoWidgets.clear();

        var responseListImage = await _socialFeedRepo.getListVideo(
            pageNumber: pageNumber, pageSize: pageSize, category: categoryID);
        if ((responseListImage.data?.length ?? 0) < pageSize) {
          isLoadMore = false;
        } else {
          isLoadMore = true;
        }
        if (currentVideoData.idLikeUnlike != '') {
          videoWidgets.add(VideoWidget(
            videoData: currentVideoData,
            index: 0,
          ));
        }
        // var isPlusIndex = videoWidgets.isNotEmpty ? true : false;
        for (var i = 0; i < (responseListImage.data?.length ?? 0); i++) {
          if ((responseListImage.data?[i].id ?? '') ==
              currentVideoData.idLikeUnlike) {
            continue;
          }
          videoWidgets.add(VideoWidget(
            videoData: VideoData(
              authorName: responseListImage.data?[i].authorName ?? '',
              videoID: responseListImage.data?[i].videoId ?? '',
              title: responseListImage.data?[i].title ?? '',
              imageUrl: responseListImage.data?[i].imageUrl ?? '',
              idLikeUnlike: responseListImage.data?[i].id ?? '',
            ),
            index: 0,
          ));
          videoWidgets[videoWidgets.length - 1].index = videoWidgets.length - 1;
        }
      } else {
        for (var i = 0; i < (videoDatas.length); i++) {
          videoWidgets.add(VideoWidget(
            videoData: videoDatas[i],
            index: i,
          ));
        }
        isLoadMore = false;
      }
      videoWidgets[position].initVideo(currentPage: position);
      if (position + 1 <= (videoWidgets.length = -1)) {
        videoWidgets[position + 1].initVideo(currentPage: position);
      }
      videoWidgets.refresh();
      controller.jumpToPage(position);
    }
  }

  Future<void> loadMoreVideo({required int currentPage}) async {
    pageNumber += 1;
    var responseListImage = await _socialFeedRepo.getListVideo(
        pageNumber: pageNumber, pageSize: pageSize, category: categoryID);
    if ((responseListImage.data?.length ?? 0) < pageSize) {
      isLoadMore = false;
    } else {
      isLoadMore = true;
    }

    for (var i = 0; i < (responseListImage.data?.length ?? 0); i++) {
      if ((responseListImage.data?[i].id ?? '') ==
          currentVideoData.idLikeUnlike) {
        continue;
      }
      videoWidgets.add(VideoWidget(
          videoData: VideoData(
            authorName: responseListImage.data?[i].authorName ?? '',
            videoID: responseListImage.data?[i].videoId ?? '',
            title: responseListImage.data?[i].title ?? '',
            imageUrl: responseListImage.data?[i].imageUrl ?? '',
            idLikeUnlike: responseListImage.data?[i].id ?? '',
          ),
          index: 0));
      videoWidgets[videoWidgets.length - 1].index = videoWidgets.length - 1;
    }

    if ((responseListImage.data?.length ?? 0) >= 1) {
      videoWidgets[pageSize * (pageNumber - 1)]
          .initVideo(currentPage: currentPage);
    }
    videoWidgets.refresh();
  }

  void loadCategory() async {
    videoWidgets.clear();
    pageNumber = 1;
    var responseListImage = await _socialFeedRepo.getListVideo(
        pageNumber: pageNumber, pageSize: pageSize, category: categoryID);

    for (var i = 0; i < (responseListImage.data?.length ?? 0); i++) {
      videoWidgets.add(VideoWidget(
        videoData: VideoData(
          authorName: responseListImage.data?[i].authorName ?? '',
          videoID: responseListImage.data?[i].videoId ?? '',
          title: responseListImage.data?[i].title ?? '',
          imageUrl: responseListImage.data?[i].imageUrl ?? '',
          idLikeUnlike: responseListImage.data?[i].id ?? '',
        ),
        index: i,
      ));
    }
    if ((responseListImage.data?.length ?? 0) < pageSize) {
      isLoadMore = false;
    } else {
      isLoadMore = true;
    }
    if (videoWidgets.length > 1) {
      videoWidgets[0].initVideo(currentPage: 0);
      videoWidgets[1].initVideo(currentPage: 0);
    } else if (videoWidgets.isNotEmpty) {
      videoWidgets[0].initVideo(currentPage: 0);
    }
    videoWidgets.refresh();
  }

  void moveToVideo({required int position}) async {
    initScreenNew(position: position);
  }
}
