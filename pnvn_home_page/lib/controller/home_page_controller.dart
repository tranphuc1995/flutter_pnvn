import 'package:account_repository/account_repository.dart';
import 'package:account_repository/entities/personal_info/personal_info_response.dart';
import 'package:core/core.dart';
import 'package:core/firebase/firebase_analytics_handler.dart';
import 'package:get/get.dart';
import 'package:pnvn_home_page/model/home_page_data.dart';
import 'package:pnvn_home_page/model/mapper/video_to_social_feed_data.dart';
import 'package:pnvn_home_page/model/social_feed_data.dart';
import 'package:social_feed_repository/repo/social_feed_repo.dart';

class HomePageController extends GetxController {
  final AccountRepo _accountRepo = Get.find();
  final SocialFeedRepo _socialFeedRepo = Get.find();
  var isLoading = true.obs;
  var homePageData = HomePageData(
      avatar: '',
      fullName: '',
      phone: '',
      typeCard: 0,
      socialFeedDatas: [
        SocialFeedData(url: '', id: ''),
        SocialFeedData(url: '', id: ''),
        SocialFeedData(url: '', id: ''),
        SocialFeedData(url: '', id: '')
      ]).obs;

  var loadTime = 0;
  var isLoadedData = false;
  void getDataHomePage() async {
    var startTime = DateTime.now();

    await LocalNotificationHandler.initLocalNotification();
    var response = PersonalInfoResponse();
    if (!AppConfig.isGuest) {
      response = await _accountRepo.getPersonalInfo();
    }
    var getListVideo =
        await _socialFeedRepo.getListVideo(pageNumber: 1, pageSize: 10);
    var socialFeedDatas = VideoToSocialFeedData.map(datas: getListVideo.data);
    //parse
    homePageData.value = HomePageData(
        avatar: response.avatar ?? '',
        fullName: response.fullName ?? '',
        phone: response.userName ?? '',
        typeCard: response.userStatus ?? 0,
        socialFeedDatas: socialFeedDatas);
    isLoading.value = false;
    homePageData.refresh();
    isLoading.refresh();

    var endTime = DateTime.now();
    loadTime = startTime.millisecond - endTime.millisecond;
    if (!isLoadedData) {
      isLoadedData = true;
      FirebaseAnalyticsHandler().logEventPage('HomePage', loadTime);
    }
  }
}
