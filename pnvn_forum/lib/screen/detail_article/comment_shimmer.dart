import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/cupertino.dart';

class CommentShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppShimmer.buildShimmerCircle(height: 34),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppShimmer.buildShimmerRectangel(height: 20, width: 150),
                const SizedBox(
                  height: 4,
                ),
                AppShimmer.buildShimmerRectangel(height: 14, width: 130),
                const SizedBox(
                  height: 8,
                ),
                AppShimmer.buildShimmerRectangel(height: 20, width: 180),
              ],
            )
          ],
        ),
      ],
    );
  }
}
