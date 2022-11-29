import 'package:core/color/app_color.dart';
import 'package:core/widgets/app_shimmer.dart';
import 'package:flutter/material.dart';

class ListArticleShimmerWidget {
  static Widget buildShimmerTab() {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              AppShimmer.buildShimmerRectangel(
                  height: 32, width: 60, radius: 25),
              const SizedBox(
                width: 8,
              ),
              AppShimmer.buildShimmerRectangel(
                  height: 32, width: 90, radius: 25),
              const SizedBox(
                width: 8,
              ),
              AppShimmer.buildShimmerRectangel(
                  height: 32, width: 120, radius: 25),
              const SizedBox(
                width: 8,
              ),
              AppShimmer.buildShimmerRectangel(
                  height: 32, width: 90, radius: 25),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
        )
      ],
    );
  }

  static Widget buildShimmerContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
                    AppShimmer.buildShimmerRectangel(height: 16, width: 130),
                  ],
                )
              ],
            ),
            AppShimmer.buildShimmerRectangel(height: 16, width: 80)
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        AppShimmer.buildShimmerRectangel(height: 24, width: double.infinity),
        const SizedBox(
          height: 4,
        ),
        AppShimmer.buildShimmerRectangel(height: 20, width: 200),
        const SizedBox(
          height: 8,
        ),
        AppShimmer.buildShimmerRectangel(height: 193, width: double.infinity),
        const SizedBox(
          height: 12,
        ),
        AppShimmer.buildShimmerRectangel(height: 20, width: 100),
        const SizedBox(
          height: 16,
        ),
        Container(
          height: 0.7,
          width: double.infinity,
          color: AppColor.colorLineSpace.withOpacity(0.5),
        )
      ],
    );
  }
}
