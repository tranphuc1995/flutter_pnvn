import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_forum/generated_images.dart';
import 'package:pnvn_forum/model/comment_data.dart';

class ItemComment extends StatelessWidget {
  CommentData commentData;
  ItemComment({required this.commentData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(17)),
              child: CachedNetworkImage(
                height: 34,
                width: 34,
                fit: BoxFit.cover,
                imageUrl: commentData.avatar,
                placeholder: (context, url) => Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.5),
                ),
                errorWidget: (context, url, error) => Image.asset(
                  Img.imgDefaultAvatar,
                  height: 34,
                  width: 34,
                ),
              )),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(commentData.name,
                    style: FontUtils.getAppFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        textColor: AppColor.colorN100)),
                Text(commentData.time,
                    style: FontUtils.getAppFont(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        textColor: AppColor.colorN300)),
                const SizedBox(
                  height: 4,
                ),
                Text(commentData.content,
                    style: FontUtils.getAppFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: AppColor.colorN200)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
