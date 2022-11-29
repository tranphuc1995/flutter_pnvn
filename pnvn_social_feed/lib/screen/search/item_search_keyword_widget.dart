import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_forum/pnvn_forum.dart';
import 'package:pnvn_social_feed/generated_images.dart';
import 'package:pnvn_social_feed/screen/search/search_result_screen.dart';

class ItemSearchKeywordWidget extends StatelessWidget {
  String search;
  String data;
  String from;
  ItemSearchKeywordWidget(
      {required this.search, required this.data, required this.from});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (from == 'post') {
          Get.to(() => ListArticleScreen(
                currentSearch: data,
              ));
        } else {
          Get.to(() => SearchResultScreen(), arguments: data);
        }
      },
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SvgPicture.asset(search == '' ? Ic.icClock : Ic.icSearch),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  data,
                  style: FontUtils.getAppFont(
                      fontSize: 14,
                      textColor: AppColor.colorTitleNews,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
