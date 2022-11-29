import 'package:core/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_home_tab/model/tab_data.dart';

// ignore: must_be_immutable
class TabWidget extends StatelessWidget {
  TabData tabData;
  VoidCallback press;

  TabWidget({Key? key, required this.tabData, required this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 36,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      tabData.icon,
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: tabData.isShowRedDot
                          ? Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: AppColor.red))
                          : Container()),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(tabData.title, style: tabData.style),
          ],
        ),
      ),
    );
  }
}
