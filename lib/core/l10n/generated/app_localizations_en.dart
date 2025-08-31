// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get auth_username => 'Username';

  @override
  String get auth_password => 'Password';

  @override
  String get auth_signin => 'Sign in';

  @override
  String get auth_forgot_password => 'Forgot password';

  @override
  String home_welcome(String username) {
    return 'Welcome $username';
  }
}
