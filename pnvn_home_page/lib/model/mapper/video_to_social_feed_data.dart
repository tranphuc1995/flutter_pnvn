import 'package:pnvn_home_page/model/social_feed_data.dart';
import 'package:pnvn_social_feed/controller/social_feed_controller.dart';
import 'package:social_feed_repository/entities/list_video/list_video_response.dart';

class VideoToSocialFeedData {
  static List<SocialFeedData> map({required List<Data>? datas}) {
    var result = <SocialFeedData>[];
    if (SocialFeedController.currentVideoData.idLikeUnlike != '') {
      result.add(SocialFeedData(
          id: SocialFeedController.currentVideoData.idLikeUnlike,
          url: SocialFeedController.currentVideoData.imageUrl));
    }
    for (var i = 0; i < (datas?.length ?? 0); i++) {
      if ((datas?[i].id ?? '') ==
          SocialFeedController.currentVideoData.idLikeUnlike) {
        continue;
      }
      var socialFeedData =
          SocialFeedData(id: datas?[i].id ?? '', url: datas?[i].imageUrl ?? '');
      result.add(socialFeedData);
    }
    return result;
  }
}
