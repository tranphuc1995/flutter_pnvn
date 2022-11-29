import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pnvn_ekyc/controller/view_info_ekyc_controller.dart';
import 'package:pnvn_ekyc/generated_images.dart';
import 'package:pnvn_ekyc/l10n/generated/l10n.dart';
import 'package:pnvn_ekyc/widgets/info_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class ViewInfoEkycScreen extends StatelessWidget {
  ViewInfoEkycScreen({Key? key}) : super(key: key);
  final ViewInfoEkycController _viewInfoEkycController =
      ViewInfoEkycController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    _viewInfoEkycController.getData(context: context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(top: 16 + height),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Stack(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 29),
                            child: SvgPicture.asset(Ic.icX))),
                    Align(
                      alignment: Alignment.center,
                      child: Text(S.of(context).confirmInfo,
                          style: FontUtils.getAppFont(
                              fontSize: 18,
                              textColor: AppColor.colorTitleNews,
                              fontWeight: FontWeight.w700)),
                    )
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Obx(() => _viewInfoEkycController.isLoading.value
                  ? AppShimmer.buildShimmerRectangel(height: 25, width: 180)
                  : Text(
                      _viewInfoEkycController.isCMND.value
                          ? 'Thông tin CMND'
                          : 'Thông tin CCCD',
                      style: FontUtils.getAppFont(
                          fontSize: 18,
                          textColor: AppColor.colorTitleNews,
                          fontWeight: FontWeight.w700))),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Obx(() => _viewInfoEkycController.isLoading.value
                  ? getListShimmer()
                  : Column(
                      children: _viewInfoEkycController.infoDatas
                          .map((infoData) => InfoWidget(infoData: infoData))
                          .toList(),
                    )),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Obx(() => _viewInfoEkycController.isLoading.value
                  ? AppShimmer.buildShimmerRectangel(height: 25, width: 180)
                  : Text(
                      _viewInfoEkycController.isCMND.value
                          ? 'Hình ảnh CMND'
                          : 'Hình ảnh CCCD',
                      style: FontUtils.getAppFont(
                          fontSize: 18,
                          textColor: AppColor.colorTitleNews,
                          fontWeight: FontWeight.w700))),
            ),
            const SizedBox(height: 16),
            Obx(() => Row(
                  children: [
                    Expanded(
                        flex: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, right: 8),
                          child: _viewInfoEkycController.isLoading.value
                              ? AppShimmer.buildShimmerRectangel(
                                  height: 123, width: double.infinity)
                              : CachedNetworkImage(
                                  height: 123,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  imageUrl: _viewInfoEkycController
                                      .frontDocument.value,
                                  placeholder: (context, url) => Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                        )),
                    Expanded(
                        flex: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 16),
                          child: _viewInfoEkycController.isLoading.value
                              ? AppShimmer.buildShimmerRectangel(
                                  height: 123, width: double.infinity)
                              : CachedNetworkImage(
                                  height: 123,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  imageUrl: _viewInfoEkycController
                                      .backDocument.value,
                                  placeholder: (context, url) => Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                        )),
                  ],
                )),
            const SizedBox(
              height: 28,
            )
          ],
        ),
      ),
    );
  }

  Widget getListShimmer() {
    return Column(
      children: [
        AppShimmer.buildShimmerRectangel(height: 56, width: double.infinity),
        const SizedBox(
          height: 16,
        ),
        AppShimmer.buildShimmerRectangel(height: 56, width: double.infinity),
        const SizedBox(
          height: 16,
        ),
        AppShimmer.buildShimmerRectangel(height: 56, width: double.infinity),
      ],
    );
  }
}
