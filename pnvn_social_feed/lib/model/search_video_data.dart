import 'package:pnvn_social_feed/model/video_data.dart';

class SearchVideoData {
  int type; // 0 data
  VideoData dataLeft;
  VideoData dataRight;

  SearchVideoData(
      {required this.dataLeft, required this.dataRight, this.type = 0});
}
