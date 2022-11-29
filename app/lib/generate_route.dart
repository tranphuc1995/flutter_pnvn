import 'package:core/router/deeplink_constant.dart';
import 'package:get/get.dart';
import 'package:pnvn_authentication/pnvn_authentication.dart';
import 'package:pnvn_authentication/screen/create_password_screen.dart';
import 'package:pnvn_authentication/screen/otp_code_screen.dart';
import 'package:pnvn_ekyc/pnvn_ekyc.dart';
import 'package:pnvn_home_tab/screen/home_tab_screen.dart';
import 'package:pnvn_social_feed/pnvn_social_feed.dart';
import 'package:pnvn_waiting_screen/pnvn_waiting_screen.dart';

List<GetPage<dynamic>> get generatedRoutes {
  return [
    GetPage(name: DeeplinkConstant.waitingScreen, page: () => WaitingScreen()),
    GetPage(name: DeeplinkConstant.homeTab, page: () => HomeTabScreen()),
    GetPage(
        name: DeeplinkConstant.chooseDocument,
        page: () => ChooseDocumentScreen()),
    GetPage(name: DeeplinkConstant.otpScreen, page: () => OtpCodeScreen()),
    GetPage(name: DeeplinkConstant.loginScreen, page: () => LoginScreen()),
    GetPage(
        name: DeeplinkConstant.passwordScreen, page: () => PasswordScreen()),
    GetPage(
        name: DeeplinkConstant.createPasswordScreen,
        page: () => CreatePasswordScreen()),
    GetPage(
        name: DeeplinkConstant.changePasswordScreen,
        page: () => ChangePasswordScreen()),
    GetPage(name: DeeplinkConstant.addInfoScreen, page: () => AddInfoScreen()),
    GetPage(
        name: DeeplinkConstant.viewInfoEkyc, page: () => ViewInfoEkycScreen()),
    GetPage(
        name: DeeplinkConstant.searchSocialFeed,
        page: () => SearchSocialFeedScreen()),
    GetPage(
        name: DeeplinkConstant.historySocialFeed,
        page: () => HistorySocialFeedScreen()),
  ];
}
