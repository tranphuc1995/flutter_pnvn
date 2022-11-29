import 'package:forum_repository/entities/list_category/list_category_response.dart';
import 'package:forum_repository/entities/list_comment/list_comment_response.dart';

import '../entities/list_post/list_post_response.dart';
import '../entities/send_comment/send_comment_response.dart';

abstract class ForumRepo {
  Future<ListCategoryResponse> getListCatetory();
  Future<ListPostResponse> getListPost(
      {required String categoryID,
      required String currentSearch,
      required String pageNumber,
      required String pageSize});
  Future<DataPost> getDetailPost({required String postID});
  Future<ListCommentResponse> getListComment(
      {required String postID,
      required String pageNumber,
      required String pageSize});

  Future<SendCommentResponse> sendComment(
      {required String postID, required String comment});
  Future<void> viewPost({required String postID, required String deviceID});
  Future<ListCategoryResponse> getListCatetorySearch({required String search});
}
