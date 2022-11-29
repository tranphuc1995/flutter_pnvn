import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_social_feed/controller/list_hashtag_controller.dart';
import 'package:pnvn_social_feed/generated_images.dart';
import 'package:get/get.dart';
import 'package:pnvn_social_feed/model/category_data.dart';

class ListHashTagScreen extends StatelessWidget {
  final ListHashtagController _listHashtagController = ListHashtagController();
  var categoryID = Get.arguments as String;
  var currentCatetory = CategoryData(id: '', name: 'Tất cả');
  @override
  Widget build(BuildContext context) {
    _listHashtagController.getListCategory();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            top: AppConfig.statusBasHeight + 16, left: 8, right: 8),
        child: Column(
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Get.back(result: currentCatetory);
                  },
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: SvgPicture.asset(Ic.icArrowLeft),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Danh mục',
                    style: FontUtils.getAppFont(
                        fontSize: 18,
                        textColor: AppColor.colorTitleNews,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Obx(() => Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.center,
                  children: _listHashtagController.isLoading.value
                      ? _buildLoadingView()
                      : _listHashtagController.categories
                          .map((categoryData) =>
                              _buildItem(categoryData: categoryData))
                          .toList(),
                ))
          ],
        ),
      ),
    );
  }

  Widget _buildItem({required CategoryData categoryData}) {
    if (categoryData.id == categoryID) {
      currentCatetory =
          CategoryData(id: categoryData.id, name: categoryData.name);
    }
    return InkWell(
      onTap: () {
        Get.back(result: categoryData);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: categoryData.id == categoryID
              ? AppColor.primary
              : AppColor.neutral600,
        ),
        child: Text(
          categoryData.name,
          style: FontUtils.getAppFont(
              fontSize: 16,
              textColor: categoryData.id == categoryID
                  ? AppColor.white
                  : AppColor.neutral100,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  List<Widget> _buildLoadingView() {
    var result = <Widget>[];
    result.add(
        AppShimmer.buildShimmerRectangel(height: 40, width: 120, radius: 24));
    result.add(
        AppShimmer.buildShimmerRectangel(height: 40, width: 140, radius: 24));
    result.add(
        AppShimmer.buildShimmerRectangel(height: 40, width: 160, radius: 24));
    result.add(
        AppShimmer.buildShimmerRectangel(height: 40, width: 160, radius: 24));
    result.add(
        AppShimmer.buildShimmerRectangel(height: 40, width: 100, radius: 24));
    result.add(
        AppShimmer.buildShimmerRectangel(height: 40, width: 110, radius: 24));
    result.add(
        AppShimmer.buildShimmerRectangel(height: 40, width: 100, radius: 24));
    result.add(
        AppShimmer.buildShimmerRectangel(height: 40, width: 140, radius: 24));
    result.add(
        AppShimmer.buildShimmerRectangel(height: 40, width: 160, radius: 24));

    return result;
  }
}
