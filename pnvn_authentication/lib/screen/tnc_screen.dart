import 'package:core/color/app_color.dart';
import 'package:core/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class TncScreen extends StatelessWidget {
  var isLoading = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          title: 'Điều khoản',
          isCenterTitle: true,
          isShowIconBack: true,
          isRadiusBottom: true,
        ),
        body: Stack(
          children: [
            WebView(
              initialUrl: 'https://hlhpnvn2-cms-stag.galaxy.one/terms-policy',
              //initialUrl: 'https://dashboard-hlhpnvn.web.app/#/terms-policy',
              javascriptMode: JavascriptMode.unrestricted,

              onPageFinished: (String url) {
                isLoading.value = false;
                isLoading.refresh();
              },
              gestureNavigationEnabled: true,
              backgroundColor: AppColor.white,
            ),
            Obx(
              () => isLoading.value
                  ? const SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Center(
                        child: SpinKitThreeBounce(
                          color: AppColor.primary,
                          size: 25,
                        ),
                      ),
                    )
                  : Container(),
            )
          ],
        ));
  }
}
