import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/color/app_color.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_home_page/generated_images.dart';
import 'package:pnvn_home_page/model/social_feed_data.dart';

class SocialFeedWidget extends StatelessWidget {
  SocialFeedData socialFeedData;
  bool isLoading;
  int index;
  ValueSetter<int> callBackMoveToSocialFeed;

  SocialFeedWidget(
      {required this.socialFeedData,
      required this.isLoading,
      required this.index,
      required this.callBackMoveToSocialFeed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callBackMoveToSocialFeed(index);
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Row(
        children: [
          isLoading
              ? AppShimmer.buildShimmerRectangel(
                  height: 176, width: 132, radius: 8)
              : socialFeedData.url == ''
                  ? ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: Container(
                        color: AppColor.darkGrey,
                        alignment: Alignment.center,
                        height: 176,
                        width: 132,
                        child: Image.asset(
                          Img.icPlayVideo,
                          width: 48,
                          height: 39,
                        ),
                      ),
                    )
                  : ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: SizedBox(
                        height: 176,
                        width: 132,
                        child: CachedNetworkImage(
                          imageUrl: socialFeedData.url,
                          placeholder: (context, url) => Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          fit: BoxFit.cover,
                        ),
                      )),
          const SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }
}
