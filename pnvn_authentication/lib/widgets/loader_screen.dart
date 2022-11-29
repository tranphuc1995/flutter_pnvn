import 'package:core/color/app_color.dart';
import 'package:flutter/material.dart';

class LoaderOverlayScreen extends StatelessWidget {
  const LoaderOverlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: const Center(
        child: CircularProgressIndicator(
          color: AppColor.primary,
        ),
      ),
    );
  }
}
