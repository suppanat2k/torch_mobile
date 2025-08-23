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

class Th {
  const Th();
  String get locale => "en";
  String get languageCode => "en";
  LoginTh get login => LoginTh(this);
  HomeTh get home => HomeTh(this);
}

class LoginTh {
  final Th _parent;
  const LoginTh(this._parent);

  /// ```dart
  /// "ชื่อผู้ใช้"
  /// ```
  String get username => """ชื่อผู้ใช้""";

  /// ```dart
  /// "รหัสผ่าน"
  /// ```
  String get password => """รหัสผ่าน""";

  /// ```dart
  /// "เข้าสู่ระบบ"
  /// ```
  String get sign_in => """เข้าสู่ระบบ""";

  /// ```dart
  /// "ลืมรหัสผ่าน"
  /// ```
  String get forgot_password => """ลืมรหัสผ่าน""";

  /// ```dart
  /// "สมัครสมาชิก"
  /// ```
  String get register => """สมัครสมาชิก""";
}

class HomeTh {
  final Th _parent;
  const HomeTh(this._parent);

  /// ```dart
  /// "ยินดีต้อนรับเข้าสู่ torch mobile คุณ $name!"
  /// ```
  String welcome(String name) =>
      """ยินดีต้อนรับเข้าสู่ torch mobile คุณ $name!""";
}

Map<String, String> get thMap => {
  """login.username""": """ชื่อผู้ใช้""",
  """login.password""": """รหัสผ่าน""",
  """login.sign_in""": """เข้าสู่ระบบ""",
  """login.forgot_password""": """ลืมรหัสผ่าน""",
  """login.register""": """สมัครสมาชิก""",
};
