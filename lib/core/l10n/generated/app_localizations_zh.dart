// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String home_welcome(String username) {
    return '欢迎 $username';
  }

  @override
  String order_item(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个物品',
      one: '1 个物品',
      zero: '没有物品',
    );
    return '$_temp0';
  }
}
