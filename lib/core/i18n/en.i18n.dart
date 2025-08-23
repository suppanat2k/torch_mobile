// GENERATED FILE, do not edit!
// ignore_for_file: annotate_overrides, non_constant_identifier_names, prefer_single_quotes, unused_element, unused_field
import 'package:i18n/i18n.dart' as i18n;

String get _languageCode => 'en';
String _plural(
  int count, {
  String? zero,
  String? one,
  String? two,
  String? few,
  String? many,
  String? other,
}) => i18n.plural(
  count,
  _languageCode,
  zero: zero,
  one: one,
  two: two,
  few: few,
  many: many,
  other: other,
);
String _ordinal(
  int count, {
  String? zero,
  String? one,
  String? two,
  String? few,
  String? many,
  String? other,
}) => i18n.ordinal(
  count,
  _languageCode,
  zero: zero,
  one: one,
  two: two,
  few: few,
  many: many,
  other: other,
);
String _cardinal(
  int count, {
  String? zero,
  String? one,
  String? two,
  String? few,
  String? many,
  String? other,
}) => i18n.cardinal(
  count,
  _languageCode,
  zero: zero,
  one: one,
  two: two,
  few: few,
  many: many,
  other: other,
);

class En {
  const En();
  String get locale => "en";
  String get languageCode => "en";
  LoginEn get login => LoginEn(this);
  HomeEn get home => HomeEn(this);
}

class LoginEn {
  final En _parent;
  const LoginEn(this._parent);

  /// ```dart
  /// "Username"
  /// ```
  String get username => """Username""";

  /// ```dart
  /// "Password"
  /// ```
  String get password => """Password""";

  /// ```dart
  /// "Sign in"
  /// ```
  String get sign_in => """Sign in""";

  /// ```dart
  /// "Forgot password"
  /// ```
  String get forgot_password => """Forgot password""";

  /// ```dart
  /// "Register"
  /// ```
  String get register => """Register""";
}

class HomeEn {
  final En _parent;
  const HomeEn(this._parent);

  /// ```dart
  /// "Welcome to torch mobile $name!"
  /// ```
  String welcome(String name) => """Welcome to torch mobile $name!""";
}

Map<String, String> get enMap => {
  """login.username""": """Username""",
  """login.password""": """Password""",
  """login.sign_in""": """Sign in""",
  """login.forgot_password""": """Forgot password""",
  """login.register""": """Register""",
};
