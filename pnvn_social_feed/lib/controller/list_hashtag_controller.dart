import 'package:get/get.dart';
import 'package:pnvn_social_feed/model/category_data.dart';
import 'package:social_feed_repository/repo/social_feed_repo.dart';

class ListHashtagController extends GetxController {
  var categories = <CategoryData>[].obs;
  var isLoading = true.obs;
  final SocialFeedRepo _socialFeedRepo = Get.find();
  void getListCategory() async {
    var result = await _socialFeedRepo.getListCategory();
    categories.add(CategoryData(id: '', name: 'Tất cả'));
    for (var i = 0; i < (result.data?.length ?? 0); i++) {
      var category = CategoryData(
          id: result.data?[i].id ?? '', name: result.data?[i].name ?? '');
      categories.add(category);
    }
    isLoading.value = false;
    categories.refresh();
    isLoading.refresh();
  }
}
