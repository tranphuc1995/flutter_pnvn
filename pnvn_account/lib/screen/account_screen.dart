import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/firebase/firebase_analytics_handler.dart';
import 'package:core/network/internet_handler.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:pnvn_account/controller/account_controller.dart';
import 'package:pnvn_account/generated_images.dart';
import 'package:pnvn_account/l10n/generated/l10n.dart';
import 'package:pnvn_account/screen/about_us_screen.dart';
import 'package:pnvn_account/screen/feed_back_screen.dart';
import 'package:pnvn_account/screen/local_auth_screen.dart';
import 'package:pnvn_account/widgets/identity_widget.dart';
import 'package:pnvn_account/widgets/item_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:pnvn_account/widgets/send_success_bottom_shet.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pnvn_social_feed/controller/social_feed_controller.dart';
import 'package:pnvn_social_feed/model/video_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountScreen extends StatelessWidget {
  final FlutterSecureStorage _flutterSecureStorage = Get.find();
  final AccountController _accountController = AccountController();

  @override
  Widget build(BuildContext context) {
    _accountController.getPersonalInfo();
    return FocusDetector(
      onFocusGained: () {
        FirebaseAnalyticsHandler()
            .logEventPage('AccountPage', _accountController.loadTime);
      },
      child: Scaffold(
        appBar: AppBarWidget(
          title: S.of(context).account,
          isRadiusBottom: true,
          isCenterTitle: false,
          isShowIconBack: false,
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          height: double.infinity,
          color: Colors.white,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 16),
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColor.accent),
                    ),
                    Obx(() => _accountController.isLoading.value
                        ? AppShimmer.buildShimmerCircle(height: 110)
                        : (ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(55)),
                            child: (_accountController
                                            .accountData.value.avatar ==
                                        '' ||
                                    AppConfig.isGuest
                                ? Image.asset(
                                    Img.imgDefaultAvatar,
                                    height: 110,
                                    width: 110,
                                  )
                                : CachedNetworkImage(
                                    height: 110,
                                    width: 110,
                                    fit: BoxFit.cover,
                                    imageUrl: _accountController
                                        .accountData.value.avatar,
                                    placeholder: (context, url) => Container(
                                      height: double.infinity,
                                      width: double.infinity,
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  )),
                          )))
                  ],
                ),
                AppConfig.isGuest
                    ? const SizedBox(
                        height: 24,
                      )
                    : const SizedBox.shrink(),
                AppConfig.isGuest
                    ? ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            SocialFeedController.currentVideoData = VideoData(
                                authorName: '',
                                idLikeUnlike: '',
                                title: '',
                                videoID: '');
                            Get.toNamed(DeeplinkConstant.loginScreen);
                          },
                          child: Image.asset(
                            Img.bgGuest,
                            fit: BoxFit.fitWidth,
                            height: 130,
                            width: double.infinity,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
                Obx(() => SizedBox(
                      height: _accountController.accountData.value.name == ''
                          ? 0
                          : 12,
                    )),
                Obx(() => _accountController.isLoading.value
                    ? AppShimmer.buildShimmerRectangel(height: 18, width: 130)
                    : (AppConfig.isGuest
                        ? const SizedBox.shrink()
                        : Text(_accountController.accountData.value.name,
                            style: FontUtils.getAppFontGradient(
                                fontSize: 16, fontWeight: FontWeight.w700)))),
                const SizedBox(
                  height: 4,
                ),
                Obx(() => _accountController.isLoading.value
                    ? AppShimmer.buildShimmerRectangel(height: 18, width: 80)
                    : (AppConfig.isGuest
                        ? const SizedBox.shrink()
                        : Text(_accountController.accountData.value.phone,
                            style: FontUtils.getAppFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                textColor: AppColor.inactiveColor)))),
                const SizedBox(
                  height: 24,
                ),
                AppConfig.isGuest
                    ? const SizedBox.shrink()
                    : Obx(() => IdentityWidget(
                          isIdentity:
                              _accountController.accountData.value.isAuthen,
                          isLoading: _accountController.isLoading.value,
                        )),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 18),
                  decoration: const BoxDecoration(
                    color: AppColor.neutral600,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [
                      AppConfig.isGuest
                          ? const SizedBox.shrink()
                          : ItemWidget(
                              icon: Ic.icMessage,
                              title: S.of(context).recommend_app,
                              press: () async {
                                var isShowSuccessBottomSheet =
                                    await Get.to(() => FeedBackScreen());
                                if (isShowSuccessBottomSheet) {
                                  await Get.bottomSheet(
                                    const SendSuccessBottomSheet(),
                                    isDismissible: true,
                                  );
                                }
                              },
                            ),
                      ItemWidget(
                        icon: Ic.icAboutUs,
                        title: S.of(context).about_us,
                        press: () {
                          Get.to(() => AboutUsScreen());
                        },
                      ),
                      AppConfig.isGuest
                          ? const SizedBox.shrink()
                          : ItemWidget(
                              icon: Ic.icLock,
                              title: S.of(context).change_pass,
                              press: () {
                                Get.toNamed(
                                    DeeplinkConstant.changePasswordScreen,
                                    arguments: _accountController
                                        .accountData.value.phone);
                              },
                            ),
                      AppConfig.isGuest
                          ? const SizedBox.shrink()
                          : Obx(() => _accountController
                                  .accountData.value.isCanUseBiometric
                              ? ItemWidget(
                                  icon: Ic.icAuthLocal,
                                  title: S.of(context).local_auth,
                                  press: () {
                                    Get.to(() => LocalAuthScreen());
                                  },
                                )
                              : Container()),
                      AppConfig.isGuest
                          ? const SizedBox.shrink()
                          : ItemWidget(
                              icon: Ic.icLogout,
                              title: S.of(context).logout,
                              isItemLogout: true,
                              press: () async {
                                showDialogHelper(
                                    context: context,
                                    title: 'Đăng xuất tài khoản',
                                    content:
                                        'Bạn chắc chắn muốn đăng xuất tài khoản',
                                    contentButtonLeft: 'Huỷ bỏ',
                                    contentButtonRight: 'Đồng ý',
                                    pressButtonLeft: () {
                                      Get.back();
                                    },
                                    pressButtonRight: () async {
                                      // set guest
                                      SocialFeedController.currentVideoData =
                                          VideoData(
                                              authorName: '',
                                              idLikeUnlike: '',
                                              title: '',
                                              videoID: '');
                                      var prefs =
                                          await SharedPreferences.getInstance();
                                      await prefs.setBool(
                                          AppConst.keyIsLogin, false);
                                      await prefs.setBool(
                                          AppConst.keyIsGuest, true);
                                      AppConfig.isGuest = true;
                                      forceLogout(
                                          isClearBiometric: false,
                                          isClearToken: false);
                                    });
                              },
                            )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(_getVersionName(),
                    style: FontUtils.getAppFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: AppColor.inactiveColor)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getVersionName() {
    var result = '';
    if (AppConfig.currentEnviroment == AppConst.domainProduction) {
      result = 'Phiên bản ${AppConfig.versionName}';
    } else {
      result =
          'Phiên bản ${AppConfig.versionName} (${AppConfig.versionCode}) ${AppConfig.currentEnviroment == AppConst.domainDev ? 'dev' : 'stg'}';
    }
    return result;
  }
}
