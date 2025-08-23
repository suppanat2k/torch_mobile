import 'package:torch_mobile/core/enums/global_enum.dart';
import 'package:torch_mobile/core/models/credential_model.dart';

class GlobalStateService {
  CredentialModel? _credential;
  CredentialModel? get credential => _credential;
  void setCredential(CredentialModel? data) {
    _credential = data;
  }

  String _locale = Locale.EN;
  String get locale => _locale;
  void setLocale(String code) {
    _locale = code;
  }
}