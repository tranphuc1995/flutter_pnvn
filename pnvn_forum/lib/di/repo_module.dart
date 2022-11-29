import 'package:forum_repository/forum_repository.dart';
import 'package:get/get.dart';

void provideRepoModule() {
  Get.put<ForumRepo>(ForumRepoImpl());
}
