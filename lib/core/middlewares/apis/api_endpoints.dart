import 'package:torch_mobile/core/enums/global_enum.dart';

class ApiEndpoints {
  static const auth = "${EnvName.SERVICE_HOST}/login";
  static const refreshToken = "${EnvName.SERVICE_HOST}/refresh-token";
}