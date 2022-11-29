import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_forum/controller/list_article_controller.dart';
import 'package:pnvn_forum/model/tab_data.dart';

class ItemTabWidget extends StatelessWidget {
  TabData tabData;
  ListArticleController listArticleController;
  ItemTabWidget(
      {super.key, required this.tabData, required this.listArticleController});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: tabData.index == 0 ? 16 : 8,
        ),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            listArticleController.clickTab(
                index: tabData.index, categoryID: tabData.id);
          },
          child: Container(
            alignment: Alignment.center,
            height: 32,
            padding: const EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: tabData.isActive ? AppColor.primary : AppColor.neutral600,
            ),
            child: Text(tabData.title,
                style: FontUtils.getAppFont(
                    fontSize: 16,
                    textColor: tabData.isActive
                        ? AppColor.white
                        : AppColor.colorTitleNews,
                    fontWeight: FontWeight.w400)),
          ),
        ),
        tabData.isLastItem
            ? const SizedBox(
                width: 16,
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
