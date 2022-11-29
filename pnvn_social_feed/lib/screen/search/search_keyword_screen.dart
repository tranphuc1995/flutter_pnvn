import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_forum/screen/list_article/list_article_screen.dart';
import 'package:pnvn_social_feed/controller/search_keyword_controller.dart';
import 'package:pnvn_social_feed/generated_images.dart';
import 'package:pnvn_social_feed/screen/search/item_search_keyword_widget.dart';
import 'package:pnvn_social_feed/screen/search/search_result_screen.dart';
import 'package:pnvn_social_feed/screen/search/search_widget.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class SearchKeywordScreen extends StatelessWidget {
  var from = Get.arguments as String;
  final SearchKeyowrdController _searchKeyowrdController =
      SearchKeyowrdController();
  var currentSearch = ''.obs;
  @override
  Widget build(BuildContext context) {
    _searchKeyowrdController.searchKeyword(
        keyword: currentSearch.value, from: from);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            top: AppConfig.statusBasHeight + 16, left: 16, right: 16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SearchWidget(
                    currentSearch: '',
                    isInputSearch: true,
                    search: (String data) {
                      currentSearch.value = data;
                      currentSearch.refresh();
                    },
                    searchKeyowrdController: _searchKeyowrdController,
                    onSearchSoftKeyboard: (String value) {
                      if (currentSearch.value.length >= 2) {
                        if (from == 'post') {
                          Get.to(() => ListArticleScreen(
                                currentSearch: currentSearch.value,
                              ));
                        } else {
                          Get.to(() => SearchResultScreen(),
                              arguments: currentSearch.value);
                        }
                      }
                    },
                    from: from,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Obx(() => InkWell(
                      onTap: () {
                        if (currentSearch.value.length >= 2) {
                          if (from == 'post') {
                            Get.to(() => ListArticleScreen(
                                  currentSearch: currentSearch.value,
                                ));
                          } else {
                            Get.to(() => SearchResultScreen(),
                                arguments: currentSearch.value);
                          }
                        }
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Text(
                        'Tìm kiếm',
                        style: FontUtils.getAppFont(
                            fontSize: 14,
                            textColor: currentSearch.value.length >= 2
                                ? AppColor.primary
                                : AppColor.primary.withOpacity(0.5),
                            fontWeight: FontWeight.w700),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Obx(() => _searchKeyowrdController.showShimmer.value
                ? _buildShowShimmerLoading()
                : (_searchKeyowrdController.keywords.isEmpty
                    ? Expanded(
                        child: currentSearch.value.length == 1
                            ? Container()
                            : _buildEmptySearch())
                    : (_searchKeyowrdController.showViewMoreUi.value
                        ? Column(
                            children: _searchKeyowrdController.keywords
                                .map((keyword) => ItemSearchKeywordWidget(
                                      search: currentSearch.value,
                                      data: keyword,
                                      from: from,
                                    ))
                                .toList(),
                          )
                        : Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                  children: _searchKeyowrdController.keywords
                                      .map((keyword) => ItemSearchKeywordWidget(
                                            search: currentSearch.value,
                                            data: keyword,
                                            from: from,
                                          ))
                                      .toList()),
                            ),
                          )))),
            Obx(() => _searchKeyowrdController.showShimmer.value
                ? Container()
                : (_searchKeyowrdController.showViewMoreUi.value
                    ? InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          _searchKeyowrdController.viewMoreKeyword();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Xem thêm',
                                style: FontUtils.getAppFont(
                                    fontSize: 14,
                                    textColor: AppColor.colorCategoryNews,
                                    fontWeight: FontWeight.w400)),
                            const SizedBox(
                              width: 6,
                            ),
                            SvgPicture.asset(
                              Ic.icArrowDown1,
                              height: 5,
                              width: 10,
                            )
                          ],
                        ),
                      )
                    : Container()))
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
          currentSearch == '' ? Img.searchEmpty : Img.dataEmpty,
          height: currentSearch == '' ? 120 : 100,
          width: currentSearch == '' ? 90 : 120,
        ),
        Text(
          currentSearch == ''
              ? 'Nhập từ khoá mà bạn muốn tìm kiếm'
              : 'Không tìm thấy kết quả phù hợp',
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
        AppShimmer.buildShimmerRectangel(height: 25, width: double.infinity),
        const SizedBox(
          height: 16,
        ),
        AppShimmer.buildShimmerRectangel(height: 25, width: double.infinity),
        const SizedBox(
          height: 16,
        ),
        AppShimmer.buildShimmerRectangel(height: 25, width: double.infinity),
      ],
    );
  }
}
