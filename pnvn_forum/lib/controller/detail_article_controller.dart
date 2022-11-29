import 'package:core/const/app_config.dart';
import 'package:flutter/foundation.dart';
import 'package:forum_repository/repo/forum_repo.dart';
import 'package:get/get.dart';
import 'package:pnvn_forum/model/comment_data.dart';
import 'package:pnvn_forum/model/post_data.dart';

class DetailArticleController extends GetxController {
  static var currentPostID = '';
  final ForumRepo _forumRepo = Get.find();
  var isLoadmore = true;
  var showUiLoadmore = false.obs;
  var page = 1;
  var size = 10;
  var isLoading = true.obs;
  var postData = PostData(
          categoryName: '',
          id: '',
          userName: '',
          time: '',
          title: '',
          description: '',
          shortDescription: '',
          image: '',
          view: '',
          comment: '',
          avatarUser: '')
      .obs;

  var commentDatas = <CommentData>[].obs;
  var totalComment = ''.obs;
  void initData({required String postID}) async {
    await _forumRepo.viewPost(postID: postID, deviceID: AppConfig.uniqueDevice);
    var response = await _forumRepo.getDetailPost(postID: postID);
    postData.value = PostData(
        categoryName: response.category?.name ?? '',
        id: response.id ?? '',
        userName: response.author ?? '',
        time: parseTime(time: response.publishedDate ?? ''),
        title: response.title ?? '',
        description: response.description ?? '',
        shortDescription: response.shortDescription ?? '',
        image: response.thumbnail ?? '',
        view: response.viewCountText ?? '',
        comment: response.commentCountText ?? '',
        avatarUser: response.avatar ?? '');
    totalComment.value = response.commentCountText ?? '';
    var responseListComment = await _forumRepo.getListComment(
        postID: postID, pageNumber: page.toString(), pageSize: size.toString());
    if ((responseListComment.data?.length ?? 0) < size) {
      isLoadmore = false;
    } else {
      isLoadmore = true;
    }
    for (var i = 0; i < (responseListComment.data?.length ?? 0); i++) {
      commentDatas.add(CommentData(
          avatar: responseListComment.data?[i].avatar ?? '',
          name: responseListComment.data?[i].nickname ?? '',
          time:
              parseTime1(time: responseListComment.data?[i].createdDate ?? ''),
          content: responseListComment.data?[i].comment ?? '',
          type: 1));
    }
    commentDatas.refresh();
    isLoading.value = false;
  }

  Future<void> sendComment(
      {required String postID,
      required String comment,
      required ValueSetter<String> isSuccess}) async {
    var result = await _forumRepo.sendComment(postID: postID, comment: comment);
    if (result.metaData?.status == 'fail') {
      isSuccess(result.metaData?.message ?? '');
    } else {
      isSuccess('');
    }
  }

  Future<void> reloadComment({required String postID}) async {
    commentDatas.clear();
    page = 1;
    var responseListComment = await _forumRepo.getListComment(
        postID: postID, pageNumber: page.toString(), pageSize: size.toString());
    if ((responseListComment.data?.length ?? 0) < size) {
      isLoadmore = false;
    } else {
      isLoadmore = true;
    }
    for (var i = 0; i < (responseListComment.data?.length ?? 0); i++) {
      commentDatas.add(CommentData(
          avatar: responseListComment.data?[i].avatar ?? '',
          name: responseListComment.data?[i].nickname ?? '',
          time:
              parseTime1(time: responseListComment.data?[i].createdDate ?? ''),
          content: responseListComment.data?[i].comment ?? '',
          type: 1));
    }
    commentDatas.refresh();
    var response = await _forumRepo.getDetailPost(postID: postID);
    totalComment.value = response.commentCountText ?? '';
  }

  Future<void> loadMoreComment({required String postID}) async {
    page += 1;
    var responseListComment = await _forumRepo.getListComment(
        postID: postID, pageNumber: page.toString(), pageSize: size.toString());
    if ((responseListComment.data?.length ?? 0) < size) {
      isLoadmore = false;
    } else {
      isLoadmore = true;
    }
    for (var i = 0; i < (responseListComment.data?.length ?? 0); i++) {
      commentDatas.add(CommentData(
          avatar: responseListComment.data?[i].avatar ?? '',
          name: responseListComment.data?[i].nickname ?? '',
          time:
              parseTime1(time: responseListComment.data?[i].createdDate ?? ''),
          content: responseListComment.data?[i].comment ?? '',
          type: 1));
    }
    commentDatas.refresh();
    showUiLoadmore.value = false;
  }

  String parseTime({required String time}) {
    var result = '';
    var newYear = '';
    var newMonth = '';
    var newDay = '';
    var newHour = '';
    var newMinute = '';
    var date = DateTime.parse('$time Z').toUtc().toLocal();
    newYear = date.year.toString();
    if ((date.month) < 10) {
      newMonth = '0${date.month}';
    } else {
      newMonth = date.month.toString();
    }
    if ((date.day) < 10) {
      newDay = '0${date.day}';
    } else {
      newDay = date.day.toString();
    }
    if (date.hour < 10) {
      newHour = '0${date.hour}';
    } else {
      newHour = date.hour.toString();
    }
    if (date.minute < 10) {
      newMinute = '0${date.minute}';
    } else {
      newMinute = date.minute.toString();
    }
    result = '$newDay/$newMonth/$newYear • $newHour:$newMinute';
    return result;
  }

  String parseTime1({required String time}) {
    var result = '';
    var newYear = '';
    var newMonth = '';
    var newDay = '';
    var newHour = '';
    var newMinute = '';
    var date = DateTime.parse('$time Z').toUtc().toLocal();
    newYear = date.year.toString();
    if ((date.month) < 10) {
      newMonth = '0${date.month}';
    } else {
      newMonth = date.month.toString();
    }
    if ((date.day) < 10) {
      newDay = '0${date.day}';
    } else {
      newDay = date.day.toString();
    }
    if (date.hour < 10) {
      newHour = '0${date.hour}';
    } else {
      newHour = date.hour.toString();
    }
    if (date.minute < 10) {
      newMinute = '0${date.minute}';
    } else {
      newMinute = date.minute.toString();
    }
    result = '$newHour:$newMinute $newDay-$newMonth-$newYear';
    return result;
  }
}
