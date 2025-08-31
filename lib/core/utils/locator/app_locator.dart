import 'package:get_it/get_it.dart';
import 'package:torch_mobile/core/utils/locator/global_state_service.dart';

final appLocator = GetIt.instance;

void setupLocator() {
  appLocator.registerLazySingleton(() => GlobalStateService());
}