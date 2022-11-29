import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/firebase/firebase_analytics_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pnvn_news/l10n/generated/l10n.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsController extends GetxController {
  var initWeb = 'http://hoilhpn.org.vn/web/guest/trang-chu';
  var currentPage = 'http://hoilhpn.org.vn/web/guest/trang-chu';

  var loadTime = 0;

  void shareLink() {
    Share.share(currentPage);
  }

  void coplyToClipBoard({required BuildContext context}) {
    Clipboard.setData(ClipboardData(text: currentPage)).then((_) {
      Future.delayed(const Duration(milliseconds: 300), () {
        // Get.snackbar(S.of(context).copied, currentPage,
        //         margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
        //         backgroundColor: Colors.black,
        //         colorText: AppColor.white,
        //         snackPosition: SnackPosition.BOTTOM,
        //         duration: const Duration(seconds: 2))
        //     .show();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: const Duration(seconds: 1),
            content: Text(S.of(context).copied,
                style: FontUtils.getAppFont(
                    fontSize: 14,
                    textColor: AppColor.white,
                    fontWeight: FontWeight.w400))));
      });
    });
  }

  void openInBrowser() async {
    var _url = Uri.parse(currentPage);
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }
}
