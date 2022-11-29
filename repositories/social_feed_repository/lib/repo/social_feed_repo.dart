import 'package:social_feed_repository/entities/detail_video/detail_video_response.dart';
import 'package:social_feed_repository/entities/get_url_video/get_url_video_response.dart';
import 'package:social_feed_repository/entities/list_category/category_response.dart';
import 'package:social_feed_repository/entities/list_video/list_video_response.dart';
import 'package:social_feed_repository/entities/load_comment/load_comment_response.dart';
import 'package:social_feed_repository/entities/searches/recent_search_response.dart';
import 'package:social_feed_repository/entities/update_nickname/update_nickname_response.dart';

import '../entities/detail_url_data.dart';
import '../entities/send_comment/send_comment_response.dart';

abstract class SocialFeedRepo {
  Future<ListVideoResponse> getListVideo(
      {String keyword,
      String category,
      required int pageNumber,
      required int pageSize});
  Future<DetailUrlData> getUrlVideo(
      {required String videoID, required String authorName});

  Future<RecentSearchResponse> getRecentSearches({required String keyword});
  Future<CategoryResponse> getListCategory();
  Future<String> ping();
  Future<void> likeUnlikeVideo({required String id});
  Future<DetailVideoResponse> getVideoDetail({required String id});
  Future<UpdateNicknameResponse> updateNickname({required String nickName});
  Future<LoadCommentResponse> loadComment(
      {required String idVideo,
      required String page,
      required String pageSize});
  Future<SendCommentResponse> sendComment(
      {required String idVideo, required String comment});
  Future<RecentSearchResponse> getRecentSearch();
  Future<RecentSearchResponse> getSuggestionKeyword({required String keyword});
  Future<void> addViewHistory({required String videoID});
  Future<void> deleteVideo({required String videoID});

  Future<RecentSearchResponse> getRecentSearchPost();
  Future<RecentSearchResponse> getSuggestionKeywordPost({required String keyword});
}
