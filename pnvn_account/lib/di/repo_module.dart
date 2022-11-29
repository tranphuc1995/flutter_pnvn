import 'package:account_repository/account_repository.dart';

import 'package:get/get.dart';

void provideRepo() {
  Get.put<AccountRepo>(AccountRepoImpl());
}
