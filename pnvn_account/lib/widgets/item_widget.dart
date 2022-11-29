import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_account/generated_images.dart';

class ItemWidget extends StatelessWidget {
  String icon;
  String title;
  bool isItemLogout;
  VoidCallback press;
  ItemWidget(
      {Key? key,
      required this.icon,
      required this.title,
      required this.press,
      this.isItemLogout = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(
                  width: 14,
                ),
                Text(title,
                    style: FontUtils.getAppFont(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        textColor: isItemLogout
                            ? AppColor.error
                            : AppColor.colorTitleNews)),
              ],
            ),
            SvgPicture.asset(Ic.icArrowRight),
          ]),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Container(
              width: double.infinity,
              height: 1,
              color: isItemLogout ? Colors.transparent : AppColor.borderColor,
            ),
          )
        ],
      ),
    );
  }
}
