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

  /// `Chào mừng`
  String get welcome {
    return Intl.message(
      'Chào mừng',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập số điện thoại của bạn.`
  String get input_number {
    return Intl.message(
      'Vui lòng nhập số điện thoại của bạn.',
      name: 'input_number',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại của bạn`
  String get hint_phone {
    return Intl.message(
      'Số điện thoại của bạn',
      name: 'hint_phone',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập số điện thoại bắt đầu từ số 0 và tối đa 10 ký tự`
  String get error_phone {
    return Intl.message(
      'Vui lòng nhập số điện thoại bắt đầu từ số 0 và tối đa 10 ký tự',
      name: 'error_phone',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp tục`
  String get next {
    return Intl.message(
      'Tiếp tục',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get login {
    return Intl.message(
      'Đăng nhập',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập mật khẩu của bạn.`
  String get input_password {
    return Intl.message(
      'Vui lòng nhập mật khẩu của bạn.',
      name: 'input_password',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu`
  String get hint_password {
    return Intl.message(
      'Mật khẩu',
      name: 'hint_password',
      desc: '',
      args: [],
    );
  }

  /// `Quên mật khẩu?`
  String get forgot_pass {
    return Intl.message(
      'Quên mật khẩu?',
      name: 'forgot_pass',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận`
  String get confirm {
    return Intl.message(
      'Xác nhận',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// resendCode
  String get resend_code_after {
    return Intl.message(
      'Gửi lại mã sau',
      name: 'resend_code_after',
      desc: '',
      args: [],
    );
  }

  /// resendCode
  String get resend_code {
    return Intl.message(
      'Gửi lại mã',
      name: 'resend_code',
      desc: '',
      args: [],
    );
  }

  /// resendCode
  String get signup_account {
    return Intl.message(
      'Đăng ký tài khoản',
      name: 'signup_account',
      desc: '',
      args: [],
    );
  }

  /// resendCode
  String get signup_account_desc {
    return Intl.message(
      'Số điện thoại này chưa đăng ký tài khoản. Bạn muốn đăng ký tài khoản? Vui lòng nhập mã xác nhận đã được gửi về',
      name: 'signup_account_desc',
      desc: '',
      args: [],
    );
  }

  /// create_password
  String get create_password {
    return Intl.message(
      'Tạo mật khẩu',
      name: 'create_password',
      desc: '',
      args: [],
    );
  }

  /// create_password_desc
  String get create_password_desc {
    return Intl.message(
      'Vui lòng nhập mật khẩu bạn muốn tạo',
      name: 'create_password_desc',
      desc: '',
      args: [],
    );
  }

  /// password
  String get password {
    return Intl.message(
      'Mật khẩu',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// rePassword
  String get re_password {
    return Intl.message(
      'Nhập lại mật khẩu',
      name: 're_password',
      desc: '',
      args: [],
    );
  }

  /// change_password
  String get change_password {
    return Intl.message(
      'Đổi mật khẩu',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// change_password_desc
  String get change_password_desc {
    return Intl.message(
      'Vui lòng nhập mật khẩu hiện tại và mật khẩu mới bạn muốn thay đổi.',
      name: 'change_password_desc',
      desc: '',
      args: [],
    );
  }

  /// current_password
  String get current_password {
    return Intl.message(
      'Mật khẩu hiện tại',
      name: 'current_password',
      desc: '',
      args: [],
    );
  }

  /// new_password
  String get new_password {
    return Intl.message(
      'Mật khẩu mới',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// re_new_password
  String get re_new_password {
    return Intl.message(
      'Nhập lại mật khẩu mới',
      name: 're_new_password',
      desc: '',
      args: [],
    );
  }

  /// code_confirm
  String get code_confirm {
    return Intl.message(
      'Mã xác nhận',
      name: 'code_confirm',
      desc: '',
      args: [],
    );
  }

  /// code_confirm_desc
  String get code_confirm_desc {
    return Intl.message(
      'Mã xác nhận đã được gửi về',
      name: 'code_confirm_send_to',
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
