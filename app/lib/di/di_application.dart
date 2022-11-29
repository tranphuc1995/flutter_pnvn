import 'package:core/di_core.dart';
import 'package:pnvn_account/pnvn_account.dart';
import 'package:pnvn_authentication/authentication_di.dart';
import 'package:pnvn_ekyc/pnvn_ekyc.dart';
import 'package:pnvn_forum/forum_di.dart';
import 'package:pnvn_home_page/home_page_di.dart';
import 'package:pnvn_home_tab/pnvn_home_tab.dart';
import 'package:pnvn_news/pnvn_news.dart';
import 'package:pnvn_social_feed/social_feed_di.dart';
import 'package:pnvn_waiting_screen/waiting_screen_di.dart';

void buildApplicationDI() {
  buildCoreDI();
  buildAccountDI();
  buildWaitingScreenDI();
  buildHomePageDI();
  buildHomeTabDI();
  buildEkycDI();
  buildSocialFeedDI();
  buildAuthenticationDI();
  buildNewsDI();
  buildForumDI();
}
