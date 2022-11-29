import 'package:ekyc_repository/ekyc_repository.dart';
import 'package:get/get.dart';

void provideRepoModule() {
  Get.put<EkycRepo>(EkycRepoImpl());
}
