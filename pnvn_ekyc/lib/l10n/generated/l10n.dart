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

  /// `Xác thực danh tính`
  String get confirmInfo {
    return Intl.message(
      'Xác thực danh tính',
      name: 'confirmInfo',
      desc: '',
      args: [],
    );
  }

  /// `Chọn xác thực 1 trong 2 giấy tờ dưới đây để bắt đầu xác thực.`
  String get choose {
    return Intl.message(
      'Chọn xác thực 1 trong 2 giấy tờ dưới đây để bắt đầu xác thực.',
      name: 'choose',
      desc: '',
      args: [],
    );
  }

  /// `Chứng minh nhân dân`
  String get cmnd {
    return Intl.message(
      'Chứng minh nhân dân',
      name: 'cmnd',
      desc: '',
      args: [],
    );
  }

  /// `Căn cước công dân`
  String get cccd {
    return Intl.message(
      'Căn cước công dân',
      name: 'cccd',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận lại thông tin`
  String get confirmInfoAgain {
    return Intl.message(
      'Xác nhận lại thông tin',
      name: 'confirmInfoAgain',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin CMND`
  String get infoCmnd {
    return Intl.message(
      'Thông tin CMND',
      name: 'infoCmnd',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin CCCD`
  String get infoCccd {
    return Intl.message(
      'Thông tin CCCD',
      name: 'infoCccd',
      desc: '',
      args: [],
    );
  }

  /// `Số CMND`
  String get cmndNumber {
    return Intl.message(
      'Số CMND',
      name: 'cmndNumber',
      desc: '',
      args: [],
    );
  }

  /// `Số CCCD`
  String get cccdNumber {
    return Intl.message(
      'Số CCCD',
      name: 'cccdNumber',
      desc: '',
      args: [],
    );
  }

  /// `Họ và tên`
  String get fullName {
    return Intl.message(
      'Họ và tên',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Ngày sinh`
  String get dob {
    return Intl.message(
      'Ngày sinh',
      name: 'dob',
      desc: '',
      args: [],
    );
  }

  /// `Nguyên quán`
  String get province {
    return Intl.message(
      'Nguyên quán',
      name: 'province',
      desc: '',
      args: [],
    );
  }

  /// `Nơi thường trú`
  String get address {
    return Intl.message(
      'Nơi thường trú',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Dân tộc`
  String get people {
    return Intl.message(
      'Dân tộc',
      name: 'people',
      desc: '',
      args: [],
    );
  }

  /// `Tôn giáo`
  String get religion {
    return Intl.message(
      'Tôn giáo',
      name: 'religion',
      desc: '',
      args: [],
    );
  }

  /// `Ngày cấp`
  String get dateOfIssue {
    return Intl.message(
      'Ngày cấp',
      name: 'dateOfIssue',
      desc: '',
      args: [],
    );
  }

  /// `Nơi cấp`
  String get issueOf {
    return Intl.message(
      'Nơi cấp',
      name: 'issueOf',
      desc: '',
      args: [],
    );
  }

  /// `Giới tính`
  String get gender {
    return Intl.message(
      'Giới tính',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Quốc tịch`
  String get nationality {
    return Intl.message(
      'Quốc tịch',
      name: 'nationality',
      desc: '',
      args: [],
    );
  }

  /// `Làm lại`
  String get remake {
    return Intl.message(
      'Làm lại',
      name: 'remake',
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

  /// `Bổ sung thông tin cá nhân`
  String get add_personal_info {
    return Intl.message(
      'Bổ sung thông tin cá nhân',
      name: 'add_personal_info',
      desc: '',
      args: [],
    );
  }

  /// `Bổ sung thông tin`
  String get add_info {
    return Intl.message(
      'Bổ sung thông tin',
      name: 'add_info',
      desc: '',
      args: [],
    );
  }

  /// `Hoàn tất`
  String get complete {
    return Intl.message(
      'Hoàn tất',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `Tình trạng hôn nhân`
  String get marry {
    return Intl.message(
      'Tình trạng hôn nhân',
      name: 'marry',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
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
