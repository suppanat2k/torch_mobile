// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String home_welcome(String username) {
    return 'ยินดีต้อนรับ $username';
  }

  @override
  String order_item(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการ',
      one: '1 รายการ',
      zero: 'ไม่มีรายการ',
    );
    return '$_temp0';
  }
}
