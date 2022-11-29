import 'package:authentication_repository/repo/authentication_repo.dart';
import 'package:authentication_repository/repo/authentication_repo_impl.dart';
import 'package:get/get.dart';

void provideRepo() {
  Get.put<AuthenticationRepo>(AuthenticationRepoImpl());
}
