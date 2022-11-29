import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_social_feed/model/video_data.dart';

import '../generated_images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

class ItemSearchSocial extends StatelessWidget {
  VideoData videoData;

  ItemSearchSocial({Key? key, required this.videoData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // videoData.imageUrl =
    //     'https://img.freepik.com/premium-photo/big-hamburger-with-double-beef-french-fries_252907-8.jpg';

    var heightRow = Get.width * 0.6;

    return SizedBox(
      height: heightRow,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: videoData.imageUrl.isNotEmpty
                    ? CachedNetworkImage(
                        height: double.infinity,
                        width: double.infinity,
                        imageUrl: videoData.imageUrl,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      )
                    : ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          color: AppColor.darkGrey,
                          alignment: Alignment.center,
                          height: double.infinity,
                          width: double.infinity,
                          child: Image.asset(
                            Img.icPlayVideo,
                            width: 48,
                            height: 39,
                          ),
                        ),
                      )),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(videoData.title,
              maxLines: 1,
              textAlign: TextAlign.left,
              style: FontUtils.getAppFont(
                  fontSize: 14,
                  textColor: AppColor.colorTitleNews,
                  fontWeight: FontWeight.w400)),
          const SizedBox(
            height: 8,
          ),
          Text('@' + videoData.authorName,
              maxLines: 1,
              textAlign: TextAlign.left,
              style: FontUtils.getAppFont(
                  fontSize: 14,
                  textColor: AppColor.colorCategoryNews,
                  fontWeight: FontWeight.w400)),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
