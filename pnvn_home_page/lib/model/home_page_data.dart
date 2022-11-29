import 'package:pnvn_home_page/model/social_feed_data.dart';

class HomePageData {
  String avatar;
  String fullName;
  String phone;
  int typeCard;
  List<SocialFeedData> socialFeedDatas;
  HomePageData(
      {required this.avatar,
      required this.fullName,
      required this.phone,
      required this.typeCard,
      required this.socialFeedDatas});
}
