import 'package:get_it/get_it.dart';
import 'package:torch_mobile/core/utils/app_storage_service.dart';
import 'package:torch_mobile/core/utils/global_state_service.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => AppStorageService());
  locator.registerLazySingleton(() => GlobalStateService());
}