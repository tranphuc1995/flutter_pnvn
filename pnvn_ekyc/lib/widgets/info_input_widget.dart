import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoInputWidget extends StatelessWidget {
  String title;
  String icon;
  String content;
  String error;
  ValueSetter<String> onTextChange;
  InfoInputWidget(
      {Key? key,
      required this.error,
      required this.title,
      required this.icon,
      required this.onTextChange,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                    color:
                        error != '' ? AppColor.error : AppColor.colorLineSpace,
                    width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: AppColor.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Stack(children: [
                    Text(title,
                        style: FontUtils.getAppFont(
                            fontSize: 12,
                            textColor: AppColor.colorCategoryNews,
                            fontWeight: FontWeight.w400)),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              onChanged: (value) {
                                onTextChange(value);
                              },
                              style: FontUtils.getAppFont(
                                  fontSize: 16,
                                  textColor: AppColor.colorTitleNews,
                                  fontWeight: FontWeight.w400),
                              initialValue: content,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                  hintText: title,
                                  hintStyle: FontUtils.getAppFont(
                                      fontSize: 16,
                                      textColor: AppColor.colorCategoryNews,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ))
                  ]),
                ),
                icon != '' ? SvgPicture.asset(icon) : Container()
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(top: 2, left: 18),
          child: Text(error,
              style: FontUtils.getAppFont(
                  fontSize: 12,
                  textColor: AppColor.error,
                  fontWeight: FontWeight.w400)),
        )
      ],
    );
  }
}
