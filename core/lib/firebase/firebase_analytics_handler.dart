import 'package:core/core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intl/intl.dart';

class FirebaseAnalyticsHandler {
  Future<void> initFirebase() async {
    // init firebase core.
    await Firebase.initializeApp();
  }

  void logEventLogin() {
    //Count số lượt login (user id, time): login_event
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd:HH:mm');
    var formattedDate = formatter.format(now);
    // ignore: avoid_print
    print(
        'EventLogin - phone: ${AppConfig.currentPhone} - userId: ${AppConfig.userId} - time: $formattedDate');

    FirebaseAnalytics.instance.logEvent(
      name: 'login_event',
      parameters: {
        'userId': AppConfig.userId,
        'phoneNumber': AppConfig.currentPhone,
        'time': formattedDate,
      },
    );
  }

  void logEventLogout() {
    // Count số lượt logout: logout_event
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd:HH:mm');
    var formattedDate = formatter.format(now);
    // ignore: avoid_print
    print(
        'EventLogout - phone: ${AppConfig.currentPhone} - userId: ${AppConfig.userId} - time: $formattedDate');

    FirebaseAnalytics.instance.logEvent(
      name: 'logout_event',
      parameters: {
        'userId': AppConfig.userId,
        'phoneNumber': AppConfig.currentPhone,
        'time': formattedDate,
      },
    );
  }

  void logEventRegister() {
    //Count số lượt đăng ký mới (user id, time): register_event
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd:HH:mm');
    var formattedDate = formatter.format(now);
    // ignore: avoid_print
    print(
        'EventRegister - phone: ${AppConfig.currentPhone} - userId: ${AppConfig.userId} - time: $formattedDate');

    FirebaseAnalytics.instance.logEvent(
      name: 'register_event',
      parameters: {
        'userId': AppConfig.userId,
        'phoneNumber': AppConfig.currentPhone,
        'time': formattedDate,
      },
    );
  }

  void logEventPage(String pageName, int loadTime) {
    //Count số lượt mở mỗi page (user Id, app version, start time, end time, load time)

    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd:HH:mm');
    var formattedDate = formatter.format(now);
    // ignore: avoid_print
    print('EventPage - $pageName - time: $formattedDate - loadTime: $loadTime');

    FirebaseAnalytics.instance.logEvent(
      name: 'page_event',
      parameters: {
        'userId': AppConfig.userId,
        'phoneNumber': AppConfig.currentPhone,
        'startTime': formattedDate,
        'loadTime': loadTime,
        'pageName': pageName,
      },
    );
  }
}
