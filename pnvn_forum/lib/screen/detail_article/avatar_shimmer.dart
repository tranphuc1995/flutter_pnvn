import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/cupertino.dart';

class AvatarShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppShimmer.buildShimmerCircle(height: 32),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppShimmer.buildShimmerRectangel(height: 16, width: 180),
                const SizedBox(
                  height: 4,
                ),
                AppShimmer.buildShimmerRectangel(height: 16, width: 150),
              ],
            )
          ],
        ),
        AppShimmer.buildShimmerRectangel(height: 16, width: 90)
      ],
    );
  }
}
