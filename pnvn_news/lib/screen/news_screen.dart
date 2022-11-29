import 'dart:developer';

import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/firebase/firebase_analytics_handler.dart';
import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:pnvn_news/controller/news_controller.dart';
import 'package:pnvn_news/generated_images.dart';
import 'package:pnvn_news/l10n/generated/l10n.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class NewsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewsScreenState();
  }
}

class NewsScreenState extends State<NewsScreen> {
  late WebViewController _webViewController;
  final NewsController _newsController = Get.find();
  var isLoading = true;

  @override
  Widget build(BuildContext context) {
    return FocusDetector(
      onFocusGained: () {
        // Android: onResume()
        // iOS: viewDidAppear()
        FirebaseAnalyticsHandler()
            .logEventPage('NewsPage', _newsController.loadTime);
      },
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: AppConfig.statusBasHeight + 56,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  Img.bgAppbar,
                  height: AppConfig.statusBasHeight + 56,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  margin: EdgeInsets.only(top: AppConfig.statusBasHeight),
                  height: 56,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tin tức',
                          style: FontUtils.getAppFont(
                              fontSize: 18,
                              textColor: AppColor.white,
                              fontWeight: FontWeight.w700)),
                      Theme(
                        data: Theme.of(context).copyWith(
                          cardColor: Colors.white,
                        ),
                        child: PopupMenuButton(
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              // ignore: sort_child_properties_last
                              child: _buildItemPopupMenu(
                                  icon: Ic.icRefresh,
                                  title: S.of(context).refresh),
                              value: 'refresh',
                            ),
                            PopupMenuItem(
                              // ignore: sort_child_properties_last
                              child: _buildItemPopupMenu(
                                  icon: Ic.icShare, title: S.of(context).share),
                              value: 'share',
                            ),
                            PopupMenuItem(
                              // ignore: sort_child_properties_last
                              child: _buildItemPopupMenu(
                                  icon: Ic.icCopy, title: S.of(context).copy),
                              value: 'copy',
                            ),
                            PopupMenuItem(
                              // ignore: sort_child_properties_last
                              child: _buildItemPopupMenu(
                                  icon: Ic.icOpenInBrowser,
                                  title: S.of(context).open_in_browser),
                              value: 'openInBrowser',
                            ),
                          ],
                          onSelected: (value) async {
                            if (value == 'refresh') {
                              await _webViewController.reload();
                            } else if (value == 'share') {
                              _newsController.shareLink();
                            } else if (value == 'copy') {
                              _newsController.coplyToClipBoard(
                                  context: context);
                            } else {
                              _newsController.openInBrowser();
                            }
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                WebView(
                  initialUrl: _newsController.initWeb,
                  javascriptMode: JavascriptMode.unrestricted,
                  onWebViewCreated:
                      (WebViewController webViewController) async {
                    _webViewController = webViewController;
                  },
                  onPageStarted: (String url) {
                    _newsController.currentPage = url;
                  },
                  onPageFinished: (String url) {
                    _webViewController
                        .runJavascript(
                            'const clearMarqueeInterval=setInterval(clearMarqueeTimer,1e3);var loopCount=0;function clearMarqueeTimer(){loopCount++,console.log("to delete..."),document.querySelectorAll(".notification_marquee").forEach((e=>{e.remove(),clearMarqueeStopFunction()})),loopCount>20&&clearMarqueeStopFunction()}function clearMarqueeStopFunction(){clearInterval(clearMarqueeInterval)}')
                        .then((value) {
                      setState(() {
                        isLoading = false;
                      });
                    }).catchError(
                            (onError) => log('error load webview' '$onError'));

                    _newsController.currentPage = url;
                  },
                  gestureNavigationEnabled: true,
                  backgroundColor: AppColor.white,
                ),
                Visibility(
                    visible: isLoading,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: const Center(
                        child: SpinKitThreeBounce(
                          color: AppColor.primary,
                          size: 25,
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget _buildItemPopupMenu({required String icon, required String title}) {
    return Row(children: [
      SvgPicture.asset(icon),
      const SizedBox(
        width: 14,
      ),
      Text(title,
          style: FontUtils.getAppFont(
              fontSize: 14,
              textColor: AppColor.colorTitleNews,
              fontWeight: FontWeight.w400))
    ]);
  }
}

// WebView(
//           initialUrl: _newsController.initWeb,
//           javascriptMode: JavascriptMode.disabled,
//           onWebViewCreated: (WebViewController webViewController) {
//             _webViewController = webViewController;
//           },
//           onPageStarted: (String url) {
//             _newsController.currentPage = url;
//           },
//           onPageFinished: (String url) {
//             _newsController.currentPage = url;
//           },
//           gestureNavigationEnabled: true,
//           backgroundColor: AppColor.black,
//         )