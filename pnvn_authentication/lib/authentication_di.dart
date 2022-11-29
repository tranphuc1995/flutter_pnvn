import 'package:core/di/network_module.dart';
import 'package:pnvn_authentication/di/controller_module.dart';
import 'package:pnvn_authentication/di/repo_module.dart';

void buildAuthenticationDI() {
  provideRepo();
  provideController();
}
