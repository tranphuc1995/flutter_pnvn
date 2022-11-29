import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:core/generated_images.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  bool isShowIconBack;
  bool isCenterTitle;
  bool isRadiusBottom;
  double radiusBottom = 24;
  List<Widget>? actions;

  String title;
  AppBarWidget(
      {Key? key,
      required this.title,
      this.isShowIconBack = true,
      this.isCenterTitle = true,
      this.actions,
      this.isRadiusBottom = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        actions: actions,
        backgroundColor: Colors.transparent,
        centerTitle: isCenterTitle,
        elevation: 0,
        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(isRadiusBottom ? radiusBottom : 0),
              bottomRight: Radius.circular(isRadiusBottom ? radiusBottom : 0)),
          child: const Image(
            image: AssetImage(Img.bgAppbar),
            fit: BoxFit.fill,
          ),
        ),
        titleSpacing: isShowIconBack ? 0 : (isCenterTitle ? 0 : 24),
        title: Text(
          title,
          style: FontUtils.getAppFont(
              fontSize: 18,
              textColor: AppColor.white,
              fontWeight: FontWeight.w700),
        ),
        automaticallyImplyLeading: isShowIconBack);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
