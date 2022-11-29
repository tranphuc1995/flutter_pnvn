import 'package:get/get.dart';
import 'package:pnvn_social_feed/model/search_video_data.dart';
import 'package:pnvn_social_feed/model/video_data.dart';
import 'package:pnvn_social_feed/pnvn_social_feed.dart';
import 'package:social_feed_repository/entities/searches/recent_search_response.dart';
import 'package:social_feed_repository/repo/social_feed_repo.dart';

class SearchKeyowrdController extends GetxController {
  final SocialFeedRepo _socialFeedRepo = Get.find();

  var keywords = <String>[].obs;
  var videos = <SearchVideoData>[].obs;
  var showShimmer = true.obs;
  var pageNumber = 1;
  var pageSize = 10;
  var isLoadMore = false;
  var showViewMoreUi = false.obs;
  var originalKeyword = <String>[];

  Future<void> searchKeyword(
      {required String keyword, required String from}) async {
    keywords.clear();
    if (keyword == '') {
      originalKeyword.clear();

      RecentSearchResponse? response;

      if (from == 'post') {
        response = await _socialFeedRepo.getRecentSearchPost();
      } else {
        response = await _socialFeedRepo.getRecentSearch();
      }
      for (var i = 0; i < (response.data?.length ?? 0); i++) {
        if (i <= 4) {
          keywords.add(response.data?[i].keyword ?? '');
          originalKeyword.add(response.data?[i].keyword ?? '');
        } else {
          originalKeyword.add(response.data?[i].keyword ?? '');
        }
      }
      if (originalKeyword.length >= 6) {
        showViewMoreUi.value = true;
        showViewMoreUi.refresh();
      }
    } else {
      RecentSearchResponse? response;

      if (from == 'post') {
        response =
            await _socialFeedRepo.getSuggestionKeywordPost(keyword: keyword);
      } else {
        response = await _socialFeedRepo.getSuggestionKeyword(keyword: keyword);
      }
      // response = await _socialFeedRepo.getSuggestionKeyword(keyword: keyword);
      for (var i = 0; i < (response.data?.length ?? 0); i++) {
        keywords.add(response.data?[i].keyword ?? '');
      }
      showViewMoreUi.value = false;
      showViewMoreUi.refresh();
    }
    keywords.refresh();
    showShimmer.value = false;
    showShimmer.refresh();
  }

  Future<void> getVideoByKeyword({required String keyword}) async {
    var responseListImage = await _socialFeedRepo.getListVideo(
        keyword: keyword, pageNumber: pageNumber, pageSize: pageSize);
    if ((responseListImage.data?.length ?? 0) < pageSize) {
      isLoadMore = false;
    } else {
      isLoadMore = true;
    }
    for (var i = 0; i < (responseListImage.data?.length ?? 0); i++) {
      var videoData = VideoData(
        authorName: responseListImage.data?[i].authorName ?? '',
        videoID: responseListImage.data?[i].videoId ?? '',
        title: responseListImage.data?[i].title ?? '',
        imageUrl: responseListImage.data?[i].imageUrl ?? '',
        idLikeUnlike: responseListImage.data?[i].id ?? '',
      );
      if (i % 2 == 0) {
        videos.add(SearchVideoData(
            dataLeft: videoData,
            dataRight: VideoData(
                authorName: '', idLikeUnlike: '', title: '', videoID: '')));
      } else {
        videos[videos.length - 1].dataRight = videoData;
      }
    }
    showShimmer.value = false;
    videos.refresh();
    showShimmer.refresh();
  }

  Future<void> loadMoreVideoByKeyword({required String keyword}) async {
    pageNumber += 1;
    var responseListImage = await _socialFeedRepo.getListVideo(
        keyword: keyword, pageNumber: pageNumber, pageSize: pageSize);
    if ((responseListImage.data?.length ?? 0) < pageSize) {
      isLoadMore = false;
    } else {
      isLoadMore = true;
    }
    videos.removeLast();
    for (var i = 0; i < (responseListImage.data?.length ?? 0); i++) {
      var videoData = VideoData(
        authorName: responseListImage.data?[i].authorName ?? '',
        videoID: responseListImage.data?[i].videoId ?? '',
        title: responseListImage.data?[i].title ?? '',
        imageUrl: responseListImage.data?[i].imageUrl ?? '',
        idLikeUnlike: responseListImage.data?[i].id ?? '',
      );
      if (i % 2 == 0) {
        videos.add(SearchVideoData(
            dataLeft: videoData,
            dataRight: VideoData(
                authorName: '', idLikeUnlike: '', title: '', videoID: '')));
      } else {
        videos[videos.length - 1].dataRight = videoData;
      }
    }
    showShimmer.value = false;
    videos.refresh();
    showShimmer.refresh();
  }

  void sendDataToSocialFeedScreen({required int position}) {
    var videoDatas = <VideoData>[];
    for (var i = 0; i < videos.length; i++) {
      videoDatas.add(videos[i].dataLeft);
      videoDatas.add(videos[i].dataRight);
    }
    Get.to(() => SocialFeedScreen(
          positionVideo: position,
          videoDatas: videoDatas,
        ));
  }

  void viewMoreKeyword() {
    showViewMoreUi.value = false;
    showViewMoreUi.refresh();
    keywords.clear();
    for (var i = 0; i < originalKeyword.length; i++) {
      keywords.add(originalKeyword[i]);
    }
    keywords.refresh();
  }
}
