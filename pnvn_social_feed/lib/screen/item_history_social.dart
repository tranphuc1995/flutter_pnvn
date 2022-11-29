import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/material.dart';

import '../generated_images.dart';
import 'package:flutter_svg/svg.dart';

class ItemHistorySocial extends StatelessWidget {
  String title;

  ItemHistorySocial({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(Ic.icSearch),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(title,
                maxLines: 1,
                textAlign: TextAlign.left,
                style: FontUtils.getAppFont(
                    fontSize: 14,
                    textColor: AppColor.colorTitleNews,
                    fontWeight: FontWeight.w400)),
          )
        ],
      ),
    );
  }
}
