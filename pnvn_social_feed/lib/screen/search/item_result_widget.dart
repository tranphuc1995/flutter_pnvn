import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pnvn_social_feed/model/search_video_data.dart';
import 'package:pnvn_social_feed/model/video_data.dart';

class ItemResultWidget extends StatelessWidget {
  VideoData dataLeft;
  VideoData dataRight;
  int index;
  ValueSetter<int> press;
  ItemResultWidget(
      {required this.dataLeft,
      required this.dataRight,
      required this.index,
      required this.press});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 50,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                press(index);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: CachedNetworkImage(
                              height: 224,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              imageUrl: dataLeft.imageUrl,
                              placeholder: (context, url) => Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            )),
                      ),
                      const SizedBox(
                        width: 4,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    dataLeft.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: FontUtils.getAppFont(
                        fontSize: 14,
                        textColor: AppColor.colorTitleNews,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    dataLeft.authorName,
                    style: FontUtils.getAppFont(
                        fontSize: 12,
                        textColor: AppColor.colorCategoryNews,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )),
        Expanded(
            flex: 50,
            child: dataRight.imageUrl != ''
                ? InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      press(index + 1);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                child: CachedNetworkImage(
                                  height: 224,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  imageUrl: dataRight.imageUrl,
                                  placeholder: (context, url) => Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          dataRight.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: FontUtils.getAppFont(
                              fontSize: 14,
                              textColor: AppColor.colorTitleNews,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          dataRight.authorName,
                          style: FontUtils.getAppFont(
                              fontSize: 12,
                              textColor: AppColor.colorCategoryNews,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink()),
      ],
    );
  }
}
