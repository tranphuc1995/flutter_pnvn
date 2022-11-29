import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnvn_ekyc/generated_images.dart';
import 'package:pnvn_ekyc/widgets/content_choose_widget.dart';
import 'package:get/get.dart';

class ChooseContentBottomSheet extends StatelessWidget {
  String title;
  List<String> datas;
  ChooseContentBottomSheet({required this.title, required this.datas});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 21, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                    style: FontUtils.getAppFont(
                        fontSize: 18,
                        textColor: AppColor.colorTitleNews,
                        fontWeight: FontWeight.w700)),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: SvgPicture.asset(Ic.icX))
              ],
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: AppColor.colorLine1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Column(
              children: datas
                  .map((data) => ContentChooseWidget(content: data))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
