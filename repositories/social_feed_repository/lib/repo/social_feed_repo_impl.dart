import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:get/get.dart';
import 'package:social_feed_repository/entities/detail_video/detail_video_response.dart';
import 'package:social_feed_repository/entities/get_url_video/get_url_video_response.dart';
import 'package:social_feed_repository/entities/get_url_video_new/get_url_video_new.dart';
import 'package:social_feed_repository/entities/list_category/category_response.dart';
import 'package:social_feed_repository/entities/list_video/list_video_response.dart';
import 'package:social_feed_repository/entities/searches/recent_search_response.dart';
import 'package:social_feed_repository/entities/status_code_response.dart';
import 'package:social_feed_repository/entities/update_nickname/update_nickname_response.dart';
import 'package:social_feed_repository/repo/social_feed_repo.dart';

import '../entities/detail_url_data.dart';
import '../entities/load_comment/load_comment_response.dart';
import '../entities/send_comment/send_comment_response.dart';

class SocialFeedRepoImpl extends SocialFeedRepo {
  final Dio _dio = Get.find();
  final String pathTikTok = '/api/v2.0/Tiktok/Search';
  final String pathRecentSearches = '/api/v2/Tiktok/RecentSearches';
  final String pathCategory = '/api/v2/Tiktok/Categories';
  final String pathPing = '/ping/authorize';
  final String pathLikeUnlike = '/api/v2/Tiktok/Likes/ToggleLike';
  final String pathDetailVideo = '/api/v2/Tiktok';
  final String pathNickname = '/api/v2/Account/nickname';
  final String pathGetComments = '/api/v2/Tiktok/Comments';
  final String pathSuggestionKeyword = '/api/v2/Tiktok/SuggestionKeywords';
  final String pathAddViewHistory = '/api/v2/Tiktok/AddViewHistory';
  final String pathDeleteVideo = '/api/v2/Tiktok/ProcessDeletedVideo';
  final String pathRecentSearchPost = '/api/v2/Post/RecentSearches';
  final String pathSuggestionPost = '/api/v2/Post/SuggestionKeywords';
  @override
  Future<ListVideoResponse> getListVideo(
      {String keyword = '',
      required int pageNumber,
      required int pageSize,
      category = ''}) async {
    try {
      var response = await _dio.post(pathTikTok, data: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
        'filter': keyword,
        'categoryIds': category == '' ? [] : [category],
      });
      return ListVideoResponse.fromJson(response.data);
    } catch (e) {
      return (const ListVideoResponse());
    }
  }

  @override
  Future<DetailUrlData> getUrlVideo(
      {required String videoID, required String authorName}) async {
    try {
      var dio = Dio();

      // var finalPath =
      //     'https://www.tiktok.com/node/share/video/@$authorName/$videoID';
      var finalPath = 'https://www.tiktok.com/@$authorName/video/$videoID';
      finalPath = Uri.encodeFull(finalPath);
      print('debug_phuc' 'final path: $finalPath');
      var response = await dio.get(finalPath,
          options: Options(
            headers: {
              'User-Agent': Uri.encodeFull(
                  'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36')
            },
          ));
      var dataParse = response.data
          .toString()
          .split('type="application/json"')[1]
          .split('</script>')[0];
      dataParse = dataParse.trim().replaceFirst('>{', '{');
      var dataDynamic = json.decode(dataParse);
      var getUrlVideoNew = GetUrlVideoNew.fromJson(dataDynamic);
      // var statusCode = StatusCodeResponse.fromJson(response.data);
      // if (statusCode.statusCode == 10204) {
      //   return DetailUrlData(linkUrl: '', statusCode: 10204);
      // }
      // var getUrlResponse = GetUrlVideoResponse.fromJson(
      //     response.data['itemInfo']['itemStruct']['video']);
    
      return DetailUrlData(
          linkUrl: getUrlVideoNew.ItemList?.video?.preloadList?[0].url ?? '',
          statusCode: 0);
    } catch (e) {
      print('debug_phuc getUrl Video catch ' + e.toString());
      return DetailUrlData(linkUrl: '', statusCode: -99);
    }
  }

  @override
  Future<RecentSearchResponse> getRecentSearches(
      {required String keyword}) async {
    try {
      var response = await _dio.get(pathRecentSearches + '?keyword=$keyword');
      return RecentSearchResponse.fromJson(response.data);
    } catch (e) {
      var responseError = (e as DioError).response;

      return RecentSearchResponse.fromJson(responseError?.data ?? '');
    }
  }

  @override
  Future<CategoryResponse> getListCategory() async {
    try {
      var response = await _dio.get('$pathCategory?pageNumber=1&pageSize=1000');
      return CategoryResponse.fromJson(response.data);
    } catch (e) {
      return (const CategoryResponse());
    }
  }

  @override
  Future<String> ping() async {
    try {
      var response = await _dio.get(pathPing);
      return response.data.toString();
    } catch (e) {
      return '';
    }
  }

  @override
  Future<void> likeUnlikeVideo({required String id}) async {
    try {
      await _dio.get(pathLikeUnlike, queryParameters: {'id': id});
    } catch (e) {}
  }

  @override
  Future<DetailVideoResponse> getVideoDetail({required String id}) async {
    try {
      var response =
          await _dio.get(pathDetailVideo, queryParameters: {'id': id});
      return DetailVideoResponse.fromJson(response.data);
    } catch (e) {
      return const DetailVideoResponse();
    }
  }

  @override
  Future<UpdateNicknameResponse> updateNickname(
      {required String nickName}) async {
    try {
      var response = await _dio.put(pathNickname, data: {'nickname': nickName});
      return UpdateNicknameResponse.fromJson(response.data);
    } catch (e) {
      return UpdateNicknameResponse.fromJson((e as DioError).response?.data);
    }
  }

  @override
  Future<LoadCommentResponse> loadComment(
      {required String idVideo,
      required String page,
      required String pageSize}) async {
    try {
      var response = await _dio.get(pathGetComments, queryParameters: {
        'VideoId': idVideo,
        'pageNumber': page,
        'pageSize': pageSize
      });
      return LoadCommentResponse.fromJson(response.data);
    } catch (e) {
      return const LoadCommentResponse();
    }
  }

  @override
  Future<SendCommentResponse> sendComment(
      {required String idVideo, required String comment}) async {
    try {
      var resonpse = await _dio.post(pathGetComments,
          data: {'videoId': idVideo, 'comment': comment});
      return SendCommentResponse.fromJson(resonpse.data);
    } catch (e) {
      return SendCommentResponse.fromJson((e as DioError).response?.data);
    }
  }

  // var _rnd = Random();
  // var _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  // String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
  //     length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  @override
  Future<RecentSearchResponse> getRecentSearch() async {
    try {
      var response = await _dio.get(pathRecentSearches);
      return RecentSearchResponse.fromJson(response.data);
    } catch (e) {
      return (const RecentSearchResponse());
    }
  }

  @override
  Future<RecentSearchResponse> getSuggestionKeyword(
      {required String keyword}) async {
    try {
      var response = await _dio
          .get(pathSuggestionKeyword, queryParameters: {'filter': keyword});
      return RecentSearchResponse.fromJson(response.data);
    } catch (e) {
      return (const RecentSearchResponse());
    }
  }

  @override
  Future<void> addViewHistory({required String videoID}) async {
    try {
      await _dio.post(pathAddViewHistory, data: {'videoId': videoID});
    } catch (e) {}
  }

  @override
  Future<void> deleteVideo({required String videoID}) async {
    try {
      await _dio.get(pathDeleteVideo, queryParameters: {'id': videoID});
    } catch (e) {}
  }

  @override
  Future<RecentSearchResponse> getRecentSearchPost() async {
    try {
      var response = await _dio.get(pathRecentSearchPost);
      return RecentSearchResponse.fromJson(response.data);
    } catch (e) {
      return (const RecentSearchResponse());
    }
  }

  @override
  Future<RecentSearchResponse> getSuggestionKeywordPost(
      {required String keyword}) async {
    try {
      var response = await _dio
          .get(pathSuggestionPost, queryParameters: {'filter': keyword});
      return RecentSearchResponse.fromJson(response.data);
    } catch (e) {
      return (const RecentSearchResponse());
    }
  }
}
