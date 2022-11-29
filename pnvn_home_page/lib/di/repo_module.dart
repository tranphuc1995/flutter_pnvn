import 'package:get/get.dart';
import 'package:social_feed_repository/repo/social_feed_repo.dart';
import 'package:social_feed_repository/repo/social_feed_repo_impl.dart';

void provideRepoModule() {
  Get.put<SocialFeedRepo>(SocialFeedRepoImpl());
}
