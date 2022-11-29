import 'package:get/get.dart';
import 'package:pnvn_social_feed/model/video_data.dart';
import 'package:social_feed_repository/entities/searches/recent_search_response.dart';
import 'package:social_feed_repository/social_feed_repository.dart';

class SearchController extends GetxController {
  final SocialFeedRepo _socialFeedRepo = Get.find();

  var listRecentSearches = <DataRecentSearch>[].obs;

  var listVideos = <VideoData>[].obs;
  var pageNumber = 1;

  var isRecentSearches = false.obs;
  var isLoading = false.obs;
  var isDataEmpty = false.obs;
  var isEnableSearch = false.obs;

  void searchTitok(String keyword) async {
    isLoading.value = true;
    var response = await _socialFeedRepo.getListVideo(
        keyword: keyword, pageNumber: pageNumber, pageSize: 10);

    var result = <VideoData>[];
    for (var i = 0; i < (response.data?.length ?? 0); i++) {
      var videoData = VideoData(
          videoID: response.data?[i].videoId ?? '',
          authorName: response.data?[i].authorName ?? '',
          title: response.data?[i].title ?? '',
          imageUrl: response.data?[i].imageUrl ?? '',
          idLikeUnlike: response.data?[i].id ?? '');
      result.add(videoData);
    }

    if (pageNumber > 1) {
      listVideos.addAll(result);
    } else {
      listVideos.value = result;
    }

    isLoading.value = false;
    if (listVideos.isEmpty) {
      isDataEmpty.value = true;
    } else {
      isDataEmpty.value = false;
    }
  }

  void recentSearchesTitok(String keyword) async {
    isRecentSearches.value = true;
    isLoading.value = true;
    isDataEmpty.value = false;

    var response = await _socialFeedRepo.getRecentSearches(keyword: keyword);
    listRecentSearches.value = response.data ?? List.empty();

    isLoading.value = false;

    if (listRecentSearches.isEmpty) {
      isDataEmpty.value = true;
    } else {
      isDataEmpty.value = false;
    }
  }
}
