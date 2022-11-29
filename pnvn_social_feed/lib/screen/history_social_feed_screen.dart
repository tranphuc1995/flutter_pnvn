import 'dart:async';

import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_social_feed/screen/item_history_social.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../controller/search_controller.dart';
import '../generated_images.dart';
import 'package:get/get.dart';

class HistorySocialFeedScreen extends StatelessWidget {
  HistorySocialFeedScreen({Key? key}) : super(key: key);

  final SearchController _searchController = SearchController();

  var keyword = '';
  Timer? _debounce;

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
    if (keyword.length >= 3) {
      _searchController.recentSearchesTitok(keyword);
    }
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).viewPadding.top;
    //var height = Get.statusBarHeight;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: 16 + AppConfig.statusBasHeight,
            left: 16,
            right: 16,
            bottom: 16),
        child: Stack(
          children: [
            Obx(() => Visibility(
                visible: !_searchController.isRecentSearches.value,
                child: SizedBox(
                  height: Get.height,
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Img.searchEmpty,
                        width: 120,
                        height: 120,
                      ),
                      Text('Nhập từ khoá mà bạn muốn tìm kiếm',
                          style: FontUtils.getAppFont(
                              fontSize: 16,
                              textColor: AppColor.black,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                ))),
            Obx(() => Visibility(
                visible: _searchController.isDataEmpty.value,
                child: SizedBox(
                  height: Get.height,
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Img.dataEmpty,
                        width: 120,
                        height: 120,
                      ),
                      Text('Không tìm thấy kết quả phù hợp',
                          style: FontUtils.getAppFont(
                              fontSize: 16,
                              textColor: AppColor.black,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                ))),
            Obx(() => Visibility(
                  visible: _searchController.isLoading.value,
                  child: SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: Container(
                      color: Colors.transparent,
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: AppColor.primary,
                        ),
                      ),
                    ),
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        Get.back();
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: SvgPicture.asset(Ic.icArrowLeft),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    // Expanded(
                    //   child: SearchWidget(
                    //     callBackSearch: (String value) {
                    //       if (value.length >= 3) {
                    //         keyword = value;
                    //         _searchController.isEnableSearch.value = true;

                    //         if (_debounce?.isActive ?? false)
                    //           _debounce?.cancel();
                    //         _debounce =
                    //             Timer(const Duration(milliseconds: 500), () {
                    //           _searchController.recentSearchesTitok(keyword);
                    //         });
                    //       } else {
                    //         _searchController.isEnableSearch.value = false;
                    //       }
                    //     },
                    //   ),
                    // ),
                    const SizedBox(
                      width: 8,
                    ),
                    Obx(() => InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            child: Text('Tìm kiếm',
                                style: FontUtils.getAppFont(
                                    fontSize: 14,
                                    textColor:
                                        _searchController.isEnableSearch.value
                                            ? AppColor.colorButtonRight
                                            : AppColor.grey,
                                    fontWeight: FontWeight.w700)),
                          ),
                          onTap: () {
                            if (_searchController.isEnableSearch.value) {
                              Get.back();
                              Get.toNamed(DeeplinkConstant.searchSocialFeed,
                                  arguments: keyword);
                            }
                          },
                        )),
                  ],
                ),
                Obx(() => Expanded(
                        child: SmartRefresher(
                      controller: _refreshController,
                      //enablePullDown: true,
                      //enablePullUp: true,
                      onRefresh: _onRefresh,
                      //onLoading: _onLoading,
                      child: ListView.builder(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          itemCount:
                              _searchController.listRecentSearches.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              child: ItemHistorySocial(
                                  title: _searchController
                                          .listRecentSearches[index].keyword ??
                                      ''),
                              onTap: () {
                                Get.back();
                                Get.toNamed(DeeplinkConstant.searchSocialFeed,
                                    arguments: _searchController
                                        .listRecentSearches[index].keyword);
                              },
                            );
                          }),
                    ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
