import 'package:account_repository/account_repository.dart';
import 'package:get/get.dart';

class FeedBackController extends GetxController {
  var isLoadingButton = false.obs;
  final AccountRepo _accountRepo = Get.find();
  Future<void> submitFeedBack({required String content}) async {
    isLoadingButton.value = true;
    isLoadingButton.refresh();
    var response = await _accountRepo.submitFeedBack(content: content);
    if ((response.metaData?.message ?? '-1') == '') {
      Get.back(result: true);
    } else {
      isLoadingButton.value = false;
      isLoadingButton.refresh();
    }
  }
}
