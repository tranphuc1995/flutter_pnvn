import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:forum_repository/repo/forum_repo.dart';
import 'package:get/get.dart';
import 'package:pnvn_forum/generated_images.dart';
import 'package:pnvn_forum/screen/detail_article/detail_article_screen.dart';

import '../../model/post_data.dart';

class ItemArticleWidget extends StatelessWidget {
  final ForumRepo _forumRepo = Get.find();
  PostData postData;
  var totalComment = ''.obs;
  var totalView = ''.obs;
  ItemArticleWidget({required this.postData});
  @override
  Widget build(BuildContext context) {
    totalView.value = postData.view;
    totalComment.value = postData.comment;
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () async {
        await Get.to(() => DetailArticleScreen(), arguments: postData.id);
        var response = await _forumRepo.getDetailPost(postID: postData.id);
        totalComment.value = response.commentCountText ?? '';
        totalView.value = response.viewCountText ?? '';
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: (CachedNetworkImage(
                      height: 32,
                      width: 32,
                      fit: BoxFit.cover,
                      imageUrl: postData.avatarUser,
                      placeholder: (context, url) => Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      errorWidget: (context, url, error) => Image.asset(
                        Img.imgDefaultAvatar,
                        height: 32,
                        width: 32,
                      ),
                    )),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(postData.categoryName,
                          style: FontUtils.getAppFont(
                              fontSize: 12,
                              textColor: AppColor.colorTitleNews,
                              fontWeight: FontWeight.w400)),
                      Text(postData.userName,
                          style: FontUtils.getAppFont(
                              fontSize: 12,
                              textColor: AppColor.neutral200,
                              fontWeight: FontWeight.w400)),
                    ],
                  )
                ],
              ),
              Text(postData.time,
                  style: FontUtils.getAppFont(
                      fontSize: 12,
                      textColor: AppColor.neutral200,
                      fontWeight: FontWeight.w400)),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(postData.title,
              style: FontUtils.getAppFont(
                  fontSize: 16,
                  textColor: AppColor.colorTitleNews,
                  fontWeight: FontWeight.w700)),
          const SizedBox(
            height: 4,
          ),
          Text(postData.shortDescription,
              style: FontUtils.getAppFont(
                  fontSize: 14,
                  textColor: AppColor.colorCategoryNews,
                  fontWeight: FontWeight.w400)),
          const SizedBox(
            height: 4,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: (CachedNetworkImage(
              height: 192,
              width: double.infinity,
              fit: BoxFit.cover,
              imageUrl: postData.image,
              placeholder: (context, url) => Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.black.withOpacity(0.5),
              ),
              errorWidget: (context, url, error) => Container(
                alignment: Alignment.center,
                height: 192,
                width: double.infinity,
                color: AppColor.colorImageError.withOpacity(0.7),
                child: Image.asset(
                  Img.bgImageError,
                  height: 56,
                  width: 56,
                ),
              ),
            )),
          ),
          const SizedBox(
            height: 12,
          ),
          Obx(() => Text(
              '${totalView.value} Lượt xem  •  ${totalComment.value} Bình luận',
              style: FontUtils.getAppFont(
                  fontSize: 14,
                  textColor: AppColor.darkGrey,
                  fontWeight: FontWeight.w400))),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 0.7,
            width: double.infinity,
            color: AppColor.colorLineSpace.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
