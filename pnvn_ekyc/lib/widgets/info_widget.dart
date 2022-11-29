import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_ekyc/model/info_data.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({Key? key, required this.infoData}) : super(key: key);
  final InfoData infoData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Container(
            padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: infoData.content == '' ? 16 : 8,
                bottom: infoData.content == '' ? 16 : 8),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.colorLineSpace, width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: infoData.colorBackGround),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      infoData.content == ''
                          ? Container()
                          : Text(infoData.title,
                              style: FontUtils.getAppFont(
                                  fontSize: 12,
                                  textColor: AppColor.colorCategoryNews,
                                  fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: infoData.content == '' ? 0 : 4,
                      ),
                      Text(
                          infoData.content == ''
                              ? infoData.title
                              : infoData.content.toUpperCase(),
                          style: FontUtils.getAppFont(
                              fontSize: 16,
                              textColor: AppColor.colorCategoryNews,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    infoData.icon != ''
                        ? SvgPicture.asset(infoData.icon)
                        : Container()
                  ],
                )
              ],
            )),
      ],
    );
  }
}
