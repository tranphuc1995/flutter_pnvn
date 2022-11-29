import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pnvn_forum/controller/detail_article_controller.dart';
import 'package:pnvn_forum/controller/list_article_controller.dart';
import 'package:pnvn_forum/generated_images.dart';
import 'package:pnvn_forum/screen/detail_article/detail_article_screen.dart';
import 'package:pnvn_forum/screen/list_article/empty_post_widget.dart';
import 'package:pnvn_forum/screen/list_article/item_article_widget.dart';
import 'package:pnvn_forum/screen/list_article/item_tab_widget.dart';
import 'package:get/get.dart';
import 'package:pnvn_forum/screen/list_article/list_article_shimmer_widget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pnvn_forum/screen/list_article/search_widget.dart';
import 'package:pnvn_social_feed/screen/search/search_keyword_screen.dart';

class ListArticleScreen extends StatelessWidget {
  String currentSearch;
  final ListArticleController _listArticleController = ListArticleController();
  final _scrollController = ScrollController();
  ListArticleScreen({required this.currentSearch});
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 200), () {
      if (DetailArticleController.currentPostID != '') {
        Get.to(() => DetailArticleScreen(),
            arguments: DetailArticleController.currentPostID);
        DetailArticleController.currentPostID = '';
      }
    });
    _listArticleController.initData(currentSearch: currentSearch);
    _scrollController.addListener(() async {
      if (_scrollController.position.atEdge) {
        var isTop = _scrollController.position.pixels == 0;
        if (isTop) {
        } else {
          if (_listArticleController.isLoadmore) {
            _listArticleController.isLoadmore = false;
            _listArticleController.showUiLoadmore.value = true;
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

            Future.delayed(const Duration(milliseconds: 300), () async {
              await _listArticleController.loadMoreData();
            });
          }
        }
      }
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppConfig.statusBasHeight + 16,
          ),
          currentSearch == ''
              ? Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientTextWidget(
                        'Thảo luận',
                        style: FontUtils.getAppFontGradient(
                            fontSize: 18, fontWeight: FontWeight.w700),
                        gradient: const LinearGradient(colors: [
                          AppColor.colorButtonLeft,
                          AppColor.colorButtonRight,
                        ]),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => SearchKeywordScreen(),
                              arguments: 'post');
                        },
                        child: SvgPicture.asset(
                          Ic.icSearch,
                          width: 22,
                          height: 22,
                        ),
                      )
                    ],
                  ),
                )
              : const SizedBox.shrink(),
          currentSearch == ''
              ? const SizedBox.shrink()
              : SearchWidget(
                  currentSearch: currentSearch,
                ),
          const SizedBox(
            height: 16,
          ),
          //tab horizontal
          Obx(() => _listArticleController.isLoadingTab.value
              ? ListArticleShimmerWidget.buildShimmerTab()
              : Obx(() => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: _listArticleController.tabDatas
                          .map((tabData) => ItemTabWidget(
                                tabData: tabData,
                                listArticleController: _listArticleController,
                              ))
                          .toList(),
                    ),
                  ))),
          Obx(() => SizedBox(
                height: _listArticleController.isLoadingContent.value ? 24 : 8,
              )),
          //list article
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Obx(() => _listArticleController.isLoadingContent.value
                  ? ListArticleShimmerWidget.buildShimmerContent()
                  : (_listArticleController.postDatas.isEmpty
                      ? EmptyPostWidget()
                      : ScrollConfiguration(
                          behavior: MyBehavior(),
                          child: SingleChildScrollView(
                            controller: _scrollController,
                            child: Column(
                              children: [
                                Column(
                                  children: _listArticleController.postDatas
                                      .map((postData) =>
                                          ItemArticleWidget(postData: postData))
                                      .toList(),
                                ),
                                Obx(() =>
                                    _listArticleController.showUiLoadmore.value
                                        ? Container(
                                            padding: const EdgeInsets.only(
                                                top: 8, bottom: 8),
                                            color: Colors.white,
                                            height: 40,
                                            width: double.infinity,
                                            child: const SpinKitRing(
                                              color: AppColor.primary,
                                              size: 25,
                                              lineWidth: 2,
                                            ),
                                          )
                                        : const SizedBox.shrink())
                              ],
                            ),
                          ),
                        ))),
            ),
          )
        ],
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
