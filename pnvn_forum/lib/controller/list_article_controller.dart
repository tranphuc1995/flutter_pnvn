import 'dart:async';

import 'package:forum_repository/entities/list_category/list_category_response.dart';
import 'package:forum_repository/entities/list_post/list_post_response.dart';
import 'package:forum_repository/forum_repository.dart';
import 'package:get/get.dart';
import 'package:pnvn_forum/model/post_data.dart';
import 'package:pnvn_forum/model/tab_data.dart';

class ListArticleController extends GetxController {
  final ForumRepo _forumRepo = Get.find();
  var isLoadingTab = true.obs;
  var isLoadingContent = true.obs;
  var tabDatas = <TabData>[].obs;
  var postDatas = <PostData>[].obs;
  var pageNumber = 1;
  var pageSize = 10;
  var isLoadmore = true;
  var showUiLoadmore = false.obs;
  var currentCategory = '';
  var currentTab = 0;
  var currentSearch = '';
  Timer? onStopClickTab;
  Future<void> initData({required String currentSearch}) async {
    var tabDatasTemp = <TabData>[];
    this.currentSearch = currentSearch;
    ListCategoryResponse? responseListCategorys;

    ListPostResponse? responseListPost;
    if (currentSearch == '') {
      responseListCategorys = await _forumRepo.getListCatetory();
    } else {
      responseListCategorys =
          await _forumRepo.getListCatetorySearch(search: currentSearch);
    }
    responseListPost = await _forumRepo.getListPost(
        categoryID: '',
        pageNumber: pageNumber.toString(),
        pageSize: pageSize.toString(),
        currentSearch: currentSearch);

    if ((responseListPost.data?.length ?? 0) < pageSize) {
      isLoadmore = false;
    } else {
      isLoadmore = true;
    }
    tabDatasTemp.add(TabData(
        title: 'Tất cả', isActive: true, index: 0, isLastItem: false, id: ''));
    for (var i = 0; i < (responseListCategorys.data?.length ?? 0); i++) {
      var isLastItem = false;

      if ((i + 1) == (responseListCategorys.data?.length ?? 0)) {
        isLastItem = true;
      }
      tabDatasTemp.add(TabData(
          title: responseListCategorys.data?[i].name ?? '',
          isActive: false,
          index: i + 1,
          isLastItem: isLastItem,
          id: responseListCategorys.data?[i].id ?? ''));
    }

    tabDatas.value = tabDatasTemp;
    isLoadingTab.value = false;
    for (var i = 0; i < (responseListPost.data?.length ?? 0); i++) {
      postDatas.add(PostData(
          categoryName: responseListPost.data?[i].category?.name ?? '',
          userName: responseListPost.data?[i].author ?? '',
          time: parseTime(time: responseListPost.data?[i].publishedDate ?? ''),
          title: responseListPost.data?[i].title ?? '',
          shortDescription: responseListPost.data?[i].shortDescription ?? '',
          image: responseListPost.data?[i].thumbnail ?? '',
          view: responseListPost.data?[i].viewCountText ?? '',
          comment: responseListPost.data?[i].commentCountText ?? '',
          avatarUser: responseListPost.data?[i].avatar ?? '',
          id: responseListPost.data?[i].id ?? '',
          description: ''));
    }
    if (currentSearch != '' && (responseListPost.data?.length ?? 0) == 0) {
      tabDatas.clear();
      tabDatas.refresh();
    }
    postDatas.refresh();
    isLoadingContent.value = false;
  }

  Future<void> loadMoreData() async {
    pageNumber += 1;
    var responseListPost = await _forumRepo.getListPost(
        categoryID: currentCategory,
        pageNumber: pageNumber.toString(),
        pageSize: pageSize.toString(),
        currentSearch: currentSearch);
    if ((responseListPost.data?.length ?? 0) < pageSize) {
      isLoadmore = false;
    } else {
      isLoadmore = true;
    }
    for (var i = 0; i < (responseListPost.data?.length ?? 0); i++) {
      postDatas.add(PostData(
          categoryName: responseListPost.data?[i].category?.name ?? '',
          userName: responseListPost.data?[i].author ?? '',
          time: parseTime(time: responseListPost.data?[i].publishedDate ?? ''),
          title: responseListPost.data?[i].title ?? '',
          shortDescription: responseListPost.data?[i].shortDescription ?? '',
          image: responseListPost.data?[i].thumbnail ?? '',
          view: responseListPost.data?[i].viewCountText ?? '',
          comment: responseListPost.data?[i].commentCountText ?? '',
          avatarUser: responseListPost.data?[i].avatar ?? '',
          id: responseListPost.data?[i].id ?? '',
          description: ''));
    }
    showUiLoadmore.value = false;
    postDatas.refresh();
  }

  Future<void> clickTab(
      {required int index, required String categoryID}) async {
    if (currentTab != index) {
      currentTab = index;
      currentCategory = categoryID;
      isLoadingContent.value = true;
      pageNumber = 1;
      var tabDatasTemp = <TabData>[];
      for (var i = 0; i < tabDatas.length; i++) {
        var tabDataTemp = tabDatas[i];
        if (index == i) {
          tabDataTemp.isActive = true;
        } else {
          tabDataTemp.isActive = false;
        }
        tabDatasTemp.add(tabDataTemp);
      }
      tabDatas.value = tabDatasTemp;
      // load api
      if (onStopClickTab != null) {
        onStopClickTab?.cancel();
      }
      onStopClickTab = Timer(const Duration(seconds: 1), () async {
        var responseListPost = await _forumRepo.getListPost(
            categoryID: categoryID,
            pageNumber: pageNumber.toString(),
            pageSize: pageSize.toString(),
            currentSearch: currentSearch);
        if ((responseListPost.data?.length ?? 0) < pageSize) {
          isLoadmore = false;
        } else {
          isLoadmore = true;
        }
        postDatas.clear();
        for (var i = 0; i < (responseListPost.data?.length ?? 0); i++) {
          postDatas.add(PostData(
              categoryName: responseListPost.data?[i].category?.name ?? '',
              userName: responseListPost.data?[i].author ?? '',
              time: parseTime(
                  time: responseListPost.data?[i].publishedDate ?? ''),
              title: responseListPost.data?[i].title ?? '',
              shortDescription:
                  responseListPost.data?[i].shortDescription ?? '',
              image: responseListPost.data?[i].thumbnail ?? '',
              view: responseListPost.data?[i].viewCountText ?? '',
              comment: responseListPost.data?[i].commentCountText ?? '',
              avatarUser: responseListPost.data?[i].avatar ?? '',
              id: responseListPost.data?[i].id ?? '',
              description: ''));
        }
        postDatas.refresh();
        isLoadingContent.value = false;
      });
    }
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
}
