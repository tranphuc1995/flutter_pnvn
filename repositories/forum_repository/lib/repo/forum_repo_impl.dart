import 'package:forum_repository/entities/list_category/list_category_response.dart';
import 'package:forum_repository/entities/list_comment/list_comment_response.dart';
import 'package:forum_repository/repo/forum_repo.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../entities/list_post/list_post_response.dart';
import '../entities/send_comment/send_comment_response.dart';

class ForumRepoImpl extends ForumRepo {
  final String pathListCategory = '/api/v2/Post/categories';
  final String pathListPost = '/api/v2/Post';
  final String pathDetailPost = '/api/v2/Post/';
  final String pathListComment = '/api/v2/Post/';
  final String pathListSendComment = '/api/v2/Post/';
  final String pathViewPost = '/api/v2/Post/';
  final String pathListCategorySearch = '/api/v2/Post/categories-by-filter';

  final Dio _dio = Get.find();
  @override
  Future<ListCategoryResponse> getListCatetory() async {
    try {
      var response = await _dio.get(pathListCategory,
          queryParameters: {'pageNumber': 1, 'pageSize': 100});
      return ListCategoryResponse.fromJson(response.data);
    } catch (e) {
      return ListCategoryResponse();
    }
  }

  @override
  Future<ListPostResponse> getListPost(
      {required String categoryID,
      required String currentSearch,
      required String pageNumber,
      required String pageSize}) async {
    try {
      var response = await _dio.get(pathListPost, queryParameters: {
        'categoryId': categoryID,
        'pageNumber': pageNumber,
        'pageSize': pageSize,
        'filter': currentSearch
      });
      return ListPostResponse.fromJson(response.data);
    } catch (e) {
      return ListPostResponse();
    }
  }

  @override
  Future<DataPost> getDetailPost({required String postID}) async {
    try {
      var response = await _dio.get('$pathDetailPost$postID');
      return DataPost.fromJson(response.data['data']);
    } catch (e) {
      return DataPost();
    }
  }

  @override
  Future<ListCommentResponse> getListComment(
      {required String postID,
      required String pageNumber,
      required String pageSize}) async {
    try {
      var response = await _dio.get(
          '$pathListComment$postID/comments?pageNumber=$pageNumber&pageSize=$pageSize');
      return ListCommentResponse.fromJson(response.data);
    } catch (e) {
      return ListCommentResponse();
    }
  }

  @override
  Future<SendCommentResponse> sendComment(
      {required String postID, required String comment}) async {
    try {
      var resonpse = await _dio
          .post('$pathListComment$postID/comments', data: {'comment': comment});
      return SendCommentResponse.fromJson(resonpse.data);
    } catch (e) {
      return SendCommentResponse.fromJson((e as DioError).response?.data);
    }
  }

  @override
  Future<void> viewPost(
      {required String postID, required String deviceID}) async {
    try {
      var resonpse = await _dio
          .post('$pathListComment$postID/views', data: {'deviceId': deviceID});
    } catch (e) {}
  }

  @override
  Future<ListCategoryResponse> getListCatetorySearch(
      {required String search}) async {
    try {
      var response = await _dio
          .get(pathListCategorySearch, queryParameters: {'filter': search});
      return ListCategoryResponse.fromJson(response.data);
    } catch (e) {
      return ListCategoryResponse();
    }
  }
}
