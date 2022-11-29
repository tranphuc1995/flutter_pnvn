import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/firebase/firebase_analytics_handler.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:pnvn_home_page/controller/home_page_controller.dart';
import 'package:pnvn_home_page/generated_images.dart';
import 'package:pnvn_home_page/widgets/avatar_widget.dart';
import 'package:pnvn_home_page/widgets/social_feed_widget.dart';
import 'package:get/get.dart';
import 'package:pnvn_social_feed/controller/social_feed_controller.dart';
import 'package:pnvn_social_feed/model/video_data.dart';
import '../widgets/card_widget.dart';
import '../widgets/coming_soon_bottom_sheet.dart';
import 'package:collection/collection.dart';

class HomeScreen extends StatelessWidget {
  ValueSetter<int> callBackMoveToSocialFeed;
  final HomePageController _homePageController = HomePageController();

  HomeScreen({required this.callBackMoveToSocialFeed});

  @override
  Widget build(BuildContext context) {
    _homePageController.getDataHomePage();
    var height = MediaQuery.of(context).viewPadding.top;
    return FocusDetector(
      onFocusGained: () {
        // Android: onResume()
        // iOS: viewDidAppear()
        if (_homePageController.isLoadedData) {
          FirebaseAnalyticsHandler()
              .logEventPage('HomePage', _homePageController.loadTime);
        }
      },
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: height + 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() => AvatarWidget(
                        avatar: _homePageController.homePageData.value.avatar,
                        phone:
                            _homePageController.homePageData.value.typeCard == 0
                                ? _homePageController.homePageData.value.phone
                                : _homePageController
                                    .homePageData.value.fullName,
                        isLoading: _homePageController.isLoading.value,
                      )),
                  const SizedBox(
                    height: 16,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: AppConfig.isGuest
                  ? ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          SocialFeedController.currentVideoData = VideoData(
                              authorName: '',
                              idLikeUnlike: '',
                              title: '',
                              videoID: '');
                          Get.offAllNamed(DeeplinkConstant.loginScreen);
                        },
                        child: Image.asset(
                          Img.bgGuest,
                          fit: BoxFit.fitWidth,
                          height: 130,
                          width: double.infinity,
                        ),
                      ),
                    )
                  : Obx(() => CardWidget(
                        typeCard:
                            _homePageController.homePageData.value.typeCard,
                        isLoading: _homePageController.isLoading.value,
                      )),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Text('Social Feed',
                      style: FontUtils.getAppFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          textColor: AppColor.colorTitleNews)),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Obx(() => Row(
                      children: _homePageController
                          .homePageData.value.socialFeedDatas
                          .mapIndexed((index, socialFeedData) =>
                              SocialFeedWidget(
                                socialFeedData: socialFeedData,
                                isLoading: _homePageController.isLoading.value,
                                callBackMoveToSocialFeed:
                                    callBackMoveToSocialFeed,
                                index: index,
                              ))
                          .toList())),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: InkWell(
                    onTap: () {
                      Get.bottomSheet(
                        ComingSoonBottomSheet(),
                        // barrierColor: Colors.red[50],
                        isDismissible: true,
                      );
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Image.asset(Img.banner)))
          ],
        ),
      )),
    );
  }
}
