import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_social_feed/controller/search_keyword_controller.dart';
import 'package:pnvn_social_feed/generated_images.dart';
import 'package:pnvn_social_feed/model/video_data.dart';
import 'package:pnvn_social_feed/screen/search/item_result_widget.dart';
import 'package:pnvn_social_feed/screen/search/search_widget.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../model/search_video_data.dart';

class SearchResultScreen extends StatelessWidget {
  final SearchKeyowrdController _searchKeyowrdController =
      SearchKeyowrdController();
  var currentSearch = '';
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    currentSearch = Get.arguments as String;
    _searchKeyowrdController.getVideoByKeyword(keyword: currentSearch);
    _scrollController.addListener(() async {
      if (_scrollController.position.atEdge) {
        var isTop = _scrollController.position.pixels == 0;
        if (isTop) {
        } else {
          if (_searchKeyowrdController.isLoadMore) {
            _searchKeyowrdController.isLoadMore = false;
            _searchKeyowrdController.videos.add(SearchVideoData(
                type: 1,
                dataLeft: VideoData(
                    authorName: '', idLikeUnlike: '', title: '', videoID: ''),
                dataRight: VideoData(
                    authorName: '', idLikeUnlike: '', title: '', videoID: '')));
            _searchKeyowrdController.videos.refresh();
            Future.delayed(const Duration(milliseconds: 100), () {
              if (_scrollController.hasClients) {
                if (_scrollController.hasClients) {
                  _scrollController.animateTo(
                      _scrollController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                }
              }
            });

            Future.delayed(const Duration(milliseconds: 500), () async {
              await _searchKeyowrdController.loadMoreVideoByKeyword(
                  keyword: currentSearch);
            });
          }
        }
      }
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            top: AppConfig.statusBasHeight + 16, left: 16, right: 16),
        child: Column(
          children: [
            SearchWidget(
              currentSearch: currentSearch,
              isInputSearch: false,
              search: (String value) {
                currentSearch = value;
              },
              searchKeyowrdController: _searchKeyowrdController,
              onSearchSoftKeyboard: (String value) {},
              from: '',
            ),
            const SizedBox(
              height: 6,
            ),
            Obx(() => _searchKeyowrdController.showShimmer.value
                ? _buildShowShimmerLoading()
                : (_searchKeyowrdController.videos.isEmpty
                    ? Expanded(child: _buildEmptySearch())
                    : Expanded(
                        child: SingleChildScrollView(
                          controller: _scrollController,
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Column(
                            children:
                                _searchKeyowrdController.videos.map((video) {
                              var index = _searchKeyowrdController.videos
                                  .indexOf(video);
                              if (video.type == 0) {
                                return ItemResultWidget(
                                  dataLeft: video.dataLeft,
                                  dataRight: video.dataRight,
                                  index: index * 2,
                                  press: (int value) {
                                    _searchKeyowrdController
                                        .sendDataToSocialFeedScreen(
                                            position: value);
                                  },
                                );
                              } else {
                                return Container(
                                  alignment: Alignment.center,
                                  color: Colors.white,
                                  height: 40,
                                  width: double.infinity,
                                  child: const SpinKitRing(
                                    color: AppColor.primary,
                                    size: 30,
                                    lineWidth: 2,
                                  ),
                                );
                              }
                            }).toList(),
                          ),
                        ),
                      )))
          ],
        ),
      ),
    );
  }

  Widget _buildEmptySearch() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Img.dataEmpty,
          height: 100,
          width: 120,
        ),
        Text(
          'Không tìm thấy kết quả phù hợp',
          style: FontUtils.getAppFont(
              fontSize: 16,
              textColor: AppColor.colorTitleNews,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }

  Widget _buildShowShimmerLoading() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        _buildItemShimmer(),
        const SizedBox(
          height: 16,
        ),
        _buildItemShimmer(),
        const SizedBox(
          height: 16,
        ),
        _buildItemShimmer(),
      ],
    );
  }

  Widget _buildItemShimmer() {
    return Row(
      children: [
        Expanded(
            flex: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: AppShimmer.buildShimmerRectangel(
                            height: 224, width: double.infinity),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                AppShimmer.buildShimmerRectangel(height: 20, width: 160),
                const SizedBox(
                  height: 4,
                ),
                AppShimmer.buildShimmerRectangel(height: 16, width: 130),
              ],
            )),
        Expanded(
            flex: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: AppShimmer.buildShimmerRectangel(
                            height: 224, width: double.infinity),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                AppShimmer.buildShimmerRectangel(height: 20, width: 160),
                const SizedBox(
                  height: 4,
                ),
                AppShimmer.buildShimmerRectangel(height: 16, width: 130),
              ],
            )),
      ],
    );
  }
}
