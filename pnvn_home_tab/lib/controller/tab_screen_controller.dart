import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pnvn_account/pnvn_account.dart';
import 'package:pnvn_forum/screen/list_article/list_article_screen.dart';
import 'package:pnvn_home_page/pnvn_home_page.dart';
import 'package:pnvn_home_tab/generated_images.dart';
import 'package:pnvn_home_tab/l10n/generated/l10n.dart';
import 'package:pnvn_home_tab/model/tab_data.dart';
import 'package:pnvn_news/pnvn_news.dart';
import 'package:pnvn_social_feed/pnvn_social_feed.dart';

class TabScreenController extends GetxController {
  final double heightTab = 64;
  var views = <Widget>[];
  var itemTabs = <TabData>[].obs;
  var titles = <String>[];
  var iconActives = <String>[];
  var iconNotActives = <String>[];
  var colorActive = AppColor.primary;
  var colorNotActive = AppColor.grey100;
  var currentIndex = 0.obs;
  var textStyleActive =
      FontUtils.getAppFontGradient(fontSize: 10, fontWeight: FontWeight.w400);

  var textStyleNotActive = FontUtils.getAppFont(
      fontSize: 10,
      textColor: AppColor.inactiveColor,
      fontWeight: FontWeight.w400);
  var socialFeedScreen = SocialFeedScreen(
    positionVideo: 0,
    videoDatas: [],
  );
  static var currentTab = 0;

  Future<void> initBottomTab({required BuildContext context}) async {
    currentTab = 0;
    //add screen
    views.add(HomeScreen(
      callBackMoveToSocialFeed: (int value) {
        socialFeedScreen.moveToVideo(position: value);
        clickTab(index: 1);
      },
    ));
    views.add(socialFeedScreen);
    views.add(ListArticleScreen(
      currentSearch: '',
    ));
    views.add(NewsScreen());
    views.add(AccountScreen());

    //add title
    titles.add(S.of(context).homePage);
    titles.add(S.of(context).socialFeed);
    titles.add('Thảo luận');
    titles.add(S.of(context).news);
    titles.add(S.of(context).account);

    // iconActive
    iconActives.add(Img.icTab_1Active);
    iconActives.add(Img.icTab_2Active);
    iconActives.add(Img.icForumActive);
    iconActives.add(Img.icTab_3Active);
    iconActives.add(Img.icTab_4Active);

    // iconNotActive
    iconNotActives.add(Img.icTab_1NotActive);
    iconNotActives.add(Img.icTab_2NotActive);
    iconNotActives.add(Img.icForumNotActive);
    iconNotActives.add(Img.icTab_3NotActive);
    iconNotActives.add(Img.icTab_4NotActive);

    //data tab

    itemTabs.add(TabData(
        title: titles[0],
        colorTitle: colorActive,
        icon: iconActives[0],
        style: textStyleActive,
        isShowRedDot: false));
    itemTabs.add(TabData(
        title: titles[1],
        colorTitle: colorNotActive,
        icon: iconNotActives[1],
        style: textStyleNotActive,
        isShowRedDot: false));
    itemTabs.add(TabData(
        title: titles[2],
        colorTitle: colorNotActive,
        icon: iconNotActives[2],
        style: textStyleNotActive,
        isShowRedDot: false));
    itemTabs.add(TabData(
        title: titles[3],
        colorTitle: colorNotActive,
        icon: iconNotActives[3],
        style: textStyleNotActive,
        isShowRedDot: false));
    itemTabs.add(TabData(
        title: titles[4],
        colorTitle: colorNotActive,
        icon: iconNotActives[4],
        style: textStyleNotActive,
        isShowRedDot: !AppConfig.isEkyc));

    itemTabs.refresh();
    currentIndex.refresh();
    if (currentIndex.value != 0) {
      clickTab(index: currentIndex.value);
    }
  }

  void clickTab({required int index}) {
    currentTab = index;
    if (index != 1) {
      socialFeedScreen.muteCurrentVideo();
    } else {
      socialFeedScreen.unMuteCurrentVideo();
    }
    var result = <TabData>[];
    for (var i = 0; i < titles.length; i++) {
      var title = titles[i];
      var colorTitle = AppColor.white;
      var icon = '';
      var isShowRedDot = false;
      if (i == 4) {
        if (AppConfig.isEkyc) {
          isShowRedDot = false;
        } else {
          isShowRedDot = true;
        }
      }
      TextStyle textStyle;
      if (i == index) {
        colorTitle = colorActive;
        icon = iconActives[i];
        textStyle = textStyleActive;
      } else {
        colorTitle = colorNotActive;
        icon = iconNotActives[i];
        textStyle = textStyleNotActive;
      }
      var itemTab = TabData(
          title: title,
          colorTitle: colorTitle,
          icon: icon,
          style: textStyle,
          isShowRedDot: isShowRedDot);
      result.add(itemTab);
    }
    itemTabs.value = result;
    currentIndex.value = index;
    itemTabs.refresh();
  }
}
