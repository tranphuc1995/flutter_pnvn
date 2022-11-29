import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_home_page/generated_images.dart';
import 'package:pnvn_home_page/l10n/generated/l10n.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AvatarWidget extends StatelessWidget {
  String avatar;
  String phone;
  bool isLoading;
  AvatarWidget(
      {required this.avatar, required this.phone, required this.isLoading});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.accent),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: isLoading
                  ? AppShimmer.buildShimmerCircle(height: 40)
                  : ((avatar == '' || AppConfig.currentToken == '')
                      ? Image.asset(Img.imgDefaultAvatar, height: 40, width: 40)
                      : CachedNetworkImage(
                          height: 40,
                          width: 40,
                          imageUrl: avatar,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        )),
            )
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.of(context).welcome,
                style: FontUtils.getAppFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    textColor: AppColor.primary)),
            const SizedBox(
              height: 4,
            ),
            isLoading
                ? AppShimmer.buildShimmerRectangel(height: 18, width: 50)
                : Text(AppConfig.isGuest ? 'Khách' : phone,
                    style: FontUtils.getAppFont(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        textColor: AppColor.primary)),
          ],
        )
      ],
    );
  }
}
