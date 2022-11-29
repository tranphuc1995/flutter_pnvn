import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_forum/generated_images.dart';

class EmptyPostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Img.bgEmptyPost,
            width: 80,
            height: 60,
          ),
          const SizedBox(
            height: 25,
          ),
          Text('Chưa có bài viết',
              style: FontUtils.getAppFont(
                  fontSize: 18,
                  textColor: AppColor.colorTitleNews,
                  fontWeight: FontWeight.w700)),
          const SizedBox(
            height: 8,
          ),
          Text('Hãy trở thành người đầu tiên tạo bài viết',
              style: FontUtils.getAppFont(
                  fontSize: 14,
                  textColor: AppColor.colorTitleNews,
                  fontWeight: FontWeight.w400)),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: ButtonWidget(text: 'Tạo bài viết'),
          )
        ],
      ),
    );
  }
}
