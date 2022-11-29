import 'package:pnvn_ekyc/di/controller_module.dart';
import 'package:pnvn_ekyc/di/repo_module.dart';

void buildEkycDI() {
  provideRepoModule();
  provideController();
}
