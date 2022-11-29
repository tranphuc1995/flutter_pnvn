import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmer {
  static Widget buildShimmerRectangel(
      {required double height, required double width, double radius = 4}) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[400]!.withOpacity(0.5),
        highlightColor: Colors.grey[300]!.withOpacity(0.5),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(radius))),
        ));
  }

  static Widget buildShimmerCircle({required double height}) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[400]!,
        highlightColor: Colors.grey[300]!,
        child: Container(
          height: height,
          width: height,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5), shape: BoxShape.circle),
        ));
  }
}
