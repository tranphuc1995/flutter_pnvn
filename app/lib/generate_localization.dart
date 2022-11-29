import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:multiple_localization/multiple_localization.dart';
import 'package:pnvn_home_tab/l10n/generated/l10n.dart' as home_tab_l10;
import 'package:pnvn_home_tab/l10n/generated/intl/messages_all.dart'
    as home_tab_msg;
import 'package:pnvn_ekyc/l10n/generated/l10n.dart' as ekyc_l10;
import 'package:pnvn_ekyc/l10n/generated/intl/messages_all.dart' as ekyc_msg;
import 'package:pnvn_social_feed/l10n/generated/l10n.dart' as social_feed_l10;
import 'package:pnvn_social_feed/l10n/generated/intl/messages_all.dart'
    as social_feed_msg;
import 'package:pnvn_authentication/l10n/generated/l10n.dart'
    as authentication_l10;
import 'package:pnvn_authentication/l10n/generated/intl/messages_all.dart'
    as authentication_msg;
import 'package:pnvn_account/l10n/generated/l10n.dart' as account_l10;
import 'package:pnvn_account/l10n/generated/intl/messages_all.dart'
    as account_msg;
import 'package:pnvn_home_page/l10n/generated/l10n.dart' as home_page_l10;
import 'package:pnvn_home_page/l10n/generated/intl/messages_all.dart'
    as home_page_msg;
import 'package:pnvn_news/l10n/generated/l10n.dart' as news_l10;
import 'package:pnvn_news/l10n/generated/intl/messages_all.dart' as news_msg;

Future<void> loadLocalization(Locale locale) async {
  await MultipleLocalizations.load(
      home_tab_msg.initializeMessages, locale, (l) {},
      setDefaultLocale: true);
  await MultipleLocalizations.load(ekyc_msg.initializeMessages, locale, (l) {},
      setDefaultLocale: true);
  await MultipleLocalizations.load(
      social_feed_msg.initializeMessages, locale, (l) {},
      setDefaultLocale: true);
  await MultipleLocalizations.load(
      authentication_msg.initializeMessages, locale, (l) {},
      setDefaultLocale: true);
  await MultipleLocalizations.load(
      account_msg.initializeMessages, locale, (l) {},
      setDefaultLocale: true);
  await MultipleLocalizations.load(
      home_page_msg.initializeMessages, locale, (l) {},
      setDefaultLocale: true);
  await MultipleLocalizations.load(news_msg.initializeMessages, locale, (l) {},
      setDefaultLocale: true);
}

Iterable<LocalizationsDelegate<dynamic>> localizations = [
  home_tab_l10.S.delegate,
  ekyc_l10.S.delegate,
  social_feed_l10.S.delegate,
  authentication_l10.S.delegate,
  account_l10.S.delegate,
  home_page_l10.S.delegate,
  news_l10.S.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
