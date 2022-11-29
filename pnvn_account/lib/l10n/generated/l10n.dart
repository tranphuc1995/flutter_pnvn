// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản`
  String get account {
    return Intl.message(
      'Tài khoản',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Chưa xác thực`
  String get not_identity {
    return Intl.message(
      'Chưa xác thực',
      name: 'not_identity',
      desc: '',
      args: [],
    );
  }

  /// `Đã xác thực`
  String get identity {
    return Intl.message(
      'Đã xác thực',
      name: 'identity',
      desc: '',
      args: [],
    );
  }

  /// `Xác thực danh tính`
  String get identityTitle {
    return Intl.message(
      'Xác thực danh tính',
      name: 'identityTitle',
      desc: '',
      args: [],
    );
  }

  /// `Góp ý về ứng dụng`
  String get recommend_app {
    return Intl.message(
      'Góp ý về ứng dụng',
      name: 'recommend_app',
      desc: '',
      args: [],
    );
  }

  /// `Về chúng tôi`
  String get about_us {
    return Intl.message(
      'Về chúng tôi',
      name: 'about_us',
      desc: '',
      args: [],
    );
  }

  /// `Đổi mật khẩu`
  String get change_pass {
    return Intl.message(
      'Đổi mật khẩu',
      name: 'change_pass',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get logout {
    return Intl.message(
      'Đăng xuất',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Góp ý về Ứng dụng`
  String get feed_back {
    return Intl.message(
      'Góp ý về Ứng dụng',
      name: 'feed_back',
      desc: '',
      args: [],
    );
  }

  /// `Sẽ thật tuyệt nếu nhận được góp ý của bạn nhằm nâng cao chất lượng của Ứng dụng`
  String get content {
    return Intl.message(
      'Sẽ thật tuyệt nếu nhận được góp ý của bạn nhằm nâng cao chất lượng của Ứng dụng',
      name: 'content',
      desc: '',
      args: [],
    );
  }

  /// `Nhập góp ý của bạn tại đây ...`
  String get hint_feed_back {
    return Intl.message(
      'Nhập góp ý của bạn tại đây ...',
      name: 'hint_feed_back',
      desc: '',
      args: [],
    );
  }

  /// `Gửi`
  String get send {
    return Intl.message(
      'Gửi',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Cám ơn bạn!`
  String get thanks {
    return Intl.message(
      'Cám ơn bạn!',
      name: 'thanks',
      desc: '',
      args: [],
    );
  }

  /// `Chúng tôi rất trân trọng đánh giá của bạn. Hãy tiếp tục trải nghiệm ứng dụng bạn nhé!`
  String get thnaks_content {
    return Intl.message(
      'Chúng tôi rất trân trọng đánh giá của bạn. Hãy tiếp tục trải nghiệm ứng dụng bạn nhé!',
      name: 'thnaks_content',
      desc: '',
      args: [],
    );
  }

  /// `Đóng`
  String get close {
    return Intl.message(
      'Đóng',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Cài đặt Face ID hoặc Vân tay`
  String get local_auth {
    return Intl.message(
      'Cài đặt Face ID hoặc Vân tay',
      name: 'local_auth',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập bằng vân tay`
  String get auth_finger {
    return Intl.message(
      'Đăng nhập bằng vân tay',
      name: 'auth_finger',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập bằng Face ID`
  String get auth_face {
    return Intl.message(
      'Đăng nhập bằng Face ID',
      name: 'auth_face',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
