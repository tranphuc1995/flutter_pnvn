import 'package:account_repository/account_repository.dart';
import 'package:account_repository/entities/personal_info/personal_info_response.dart';
import 'package:core/const/app_config.dart';
import 'package:core/firebase/firebase_analytics_handler.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:pnvn_account/model/account_data.dart';

class AccountController extends GetxController {
  var isLoading = true.obs;
  var accountData = AccountData(
          avatar: '',
          name: '',
          isAuthen: false,
          phone: '',
          isCanUseBiometric: false)
      .obs;
  final AccountRepo _accountRepo = Get.find();

  var loadTime = 0;

  Future<void> getPersonalInfo() async {
    var startTime = DateTime.now();

    var canCheck = await LocalAuthentication().canCheckBiometrics;
    var response = PersonalInfoResponse();
    if (!AppConfig.isGuest) {
      response = await _accountRepo.getPersonalInfo();
    }
    AppConfig.currentPhone = response.userName ?? '';
    AppConfig.userId = response.id ?? '';
    AppConfig.currentNickName = response.nickname ?? '';

    accountData.value = AccountData(
        avatar: response.avatar ?? '',
        name: response.fullName ?? '',
        isAuthen: (response.userStatus ?? 0) == 0 ? false : true,
        phone: response.userName ?? '',
        isCanUseBiometric: canCheck);
    isLoading.value = false;
    accountData.refresh();
    isLoading.refresh();

    var endTime = DateTime.now();
    loadTime = startTime.millisecond - endTime.millisecond;
  }
}
