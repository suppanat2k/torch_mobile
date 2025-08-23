import 'package:shared_preferences/shared_preferences.dart';
import 'package:torch_mobile/core/enums/global_enum.dart';

class AppStorageService {
  static late SharedPreferences storage;
  static Future<void> setupAppStorage() async {
    storage = await SharedPreferences.getInstance();
  }

  static Future<String?> getLocale() async {
    return storage.getString(AppStorageName.LOCALE);
  }

  static Future<bool> setLocale(String value) async {
    return storage.setString(AppStorageName.LOCALE, value);
  }

  static Future<bool> clearLocale() async {
    return storage.remove(AppStorageName.LOCALE);
  }
}