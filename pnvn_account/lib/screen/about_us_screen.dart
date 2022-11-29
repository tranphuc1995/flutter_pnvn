import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_account/generated_images.dart';
import 'package:pnvn_account/l10n/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        title: S.of(context).about_us,
        isShowIconBack: true,
        isCenterTitle: false,
        isRadiusBottom: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 37,
            ),
            Image.asset(
              Img.imgLogoApp,
              height: 72,
              width: 72,
            ),
            const SizedBox(
              height: 16,
            ),
            Text('Ứng dụng',
                textAlign: TextAlign.center,
                style: FontUtils.getAppFont(
                    fontSize: 16,
                    textColor: AppColor.colorTitleNews,
                    fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 4,
            ),
            Text('HỘI LIÊN HIỆP PHỤ NỮ VIỆT NAM',
                textAlign: TextAlign.center,
                style: FontUtils.getAppFont(
                    fontSize: 16,
                    textColor: AppColor.colorTitleNews,
                    fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 16,
            ),
            RichText(
              text: TextSpan(
                text: 'Địa chỉ: ',
                style: FontUtils.getAppFont(
                    fontSize: 16,
                    textColor: AppColor.colorTitleNews,
                    fontWeight: FontWeight.w700),
                children: <TextSpan>[
                  TextSpan(
                      text: '39 Hàng Chuối, Hà Nội, Việt Nam',
                      style: FontUtils.getAppFont(
                          fontSize: 16,
                          textColor: AppColor.colorTitleNews,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await launchUrl(Uri.parse('tel:02439718157'));
              },
              child: RichText(
                text: TextSpan(
                  text: 'Hotline: ',
                  style: FontUtils.getAppFont(
                      fontSize: 16,
                      textColor: AppColor.colorTitleNews,
                      fontWeight: FontWeight.w700),
                  children: <TextSpan>[
                    TextSpan(
                        text: '(024) 39718157',
                        style: FontUtils.getAppFont(
                            fontSize: 16,
                            textColor: AppColor.primary,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await launchUrl(Uri.parse('mailto:webhoilhpnvn@yahoo.com'));
              },
              child: RichText(
                text: TextSpan(
                  text: 'Email: ',
                  style: FontUtils.getAppFont(
                      fontSize: 16,
                      textColor: AppColor.colorTitleNews,
                      fontWeight: FontWeight.w700),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'webhoilhpnvn@yahoo.com',
                        style: FontUtils.getAppFont(
                            fontSize: 16,
                            textColor: AppColor.primary,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text('Phát triển bởi: ',
                textAlign: TextAlign.center,
                style: FontUtils.getAppFont(
                    fontSize: 16,
                    textColor: AppColor.colorTitleNews,
                    fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              height: 136,
              decoration: const BoxDecoration(
                  color: AppColor.neutral600,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Img.imgContent,
                    height: 76,
                    width: 87,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('Hội Liên hiệp Phụ nữ Việt Nam',
                      textAlign: TextAlign.center,
                      style: FontUtils.getAppFont(
                          fontSize: 14,
                          textColor: AppColor.colorTitleNews,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              width: double.infinity,
              height: 136,
              decoration: const BoxDecoration(
                  color: AppColor.neutral600,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Img.imgGalaxyOne,
                    height: 56,
                    width: 124,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('Công ty TNHH GalaxyOne, thành viên của tập đoàn Sovico',
                      textAlign: TextAlign.center,
                      style: FontUtils.getAppFont(
                          fontSize: 14,
                          textColor: AppColor.colorTitleNews,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
