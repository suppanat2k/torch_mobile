// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get auth_username => 'ชื่อผู้ใช้งาน';

  @override
  String get auth_password => 'รหัสผ่าน';

  @override
  String get auth_signin => 'เข้าสู่ระบบ';

  @override
  String get auth_forgot_password => 'ลืมรหัสผ่าน';

  @override
  String home_welcome(String username) {
    return 'ยินดีต้อนรับ $username';
  }
}
