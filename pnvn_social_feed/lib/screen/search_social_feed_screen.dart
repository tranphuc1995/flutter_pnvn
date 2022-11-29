import 'dart:async';

import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_social_feed/controller/search_controller.dart';
import 'package:pnvn_social_feed/screen/item_search_social.dart';
import 'package:pnvn_social_feed/screen/social_feed_screen.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../generated_images.dart';
import 'package:get/get.dart';

class SearchSocialFeedScreen extends StatelessWidget {
  SearchSocialFeedScreen({Key? key}) : super(key: key);

  final SearchController _searchController = SearchController();
  //final _controller = ScrollController();
  var keyword = Get.arguments as String;
  Timer? _debounce;

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()

    _searchController.pageNumber = 1;
    _searchController.searchTitok(keyword);
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    // items.add((items.length+1).toString());
    // if(mounted)
    // setState(() {

    // });

    _searchController.pageNumber++;
    _searchController.searchTitok(keyword);

    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).viewPadding.top;
    //var height = Get.statusBarHeight;
    _searchController.searchTitok(keyword);

    // Setup the listener.
    // _controller.addListener(() {
    //   if (_controller.position.atEdge) {
    //     bool isTop = _controller.position.pixels == 0;
    //     if (isTop) {
    //       print('At the top');
    //     } else {
    //       _searchController.pageNumber++;
    //       _searchController.searchTitok(keyword);
    //     }
    //   }
    // });

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: 16 + AppConfig.statusBasHeight,
            left: 16,
            right: 16,
            bottom: 16),
        child: Stack(
          children: [
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
                    //     keyword: keyword,
                    //     callBackSearch: (String value) {
                    //       if (value.length >= 3) {
                    //         keyword = value;
                    //         _searchController.isEnableSearch.value = true;

                    //         if (_debounce?.isActive ?? false)
                    //           _debounce?.cancel();
                    //         _debounce =
                    //             Timer(const Duration(milliseconds: 500), () {
                    //           _searchController.pageNumber = 1;
                    //           _searchController.searchTitok(keyword);
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
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Text('Tìm kiếm',
                            style: FontUtils.getAppFont(
                                fontSize: 14,
                                textColor: AppColor.colorButtonRight,
                                fontWeight: FontWeight.w700)),
                      ),
                      onTap: () {
                        _searchController.pageNumber = 1;
                        _searchController.searchTitok(keyword);
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Obx(
                  () => Expanded(
                    child: SmartRefresher(
                        controller: _refreshController,
                        enablePullDown: true,
                        enablePullUp: true,
                        onRefresh: _onRefresh,
                        onLoading: _onLoading,
                        child: _searchController.listVideos.isNotEmpty
                            ? GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.6,
                                  crossAxisSpacing: 10.0,
                                ),
                                itemCount: _searchController.listVideos.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    child: ItemSearchSocial(
                                        videoData: _searchController
                                            .listVideos[index]),
                                    onTap: () {
                                      Get.to(() => SocialFeedScreen(
                                          videoDatas: _searchController
                                              .listVideos.value,
                                          positionVideo: index));
                                    },
                                  );
                                })
                            : Container()),
                  ),
                ),
              ],
            ),
            Obx(() => Visibility(
                  visible: _searchController.isDataEmpty.value,
                  child: SizedBox(
                      width: Get.width,
                      height: Get.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Img.dataEmpty,
                            width: 120,
                            height: 120,
                          ),
                          Text('Không tìm thấy kết quả phù hợp',
                              style: FontUtils.getAppFont(
                                  fontSize: 14,
                                  textColor: AppColor.colorTitleNews,
                                  fontWeight: FontWeight.w400)),
                        ],
                      )),
                )),
            Obx(() => Visibility(
                  visible: _searchController.isLoading.value,
                  child: Container(
                    color: Colors.transparent,
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
