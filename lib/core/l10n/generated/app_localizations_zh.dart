// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get auth_username => '用户名';

  @override
  String get auth_password => '密码';

  @override
  String get auth_signin => '登录';

  @override
  String get auth_forgot_password => '忘记密码';

  @override
  String home_welcome(String username) {
    return '欢迎 $username';
  }
}
