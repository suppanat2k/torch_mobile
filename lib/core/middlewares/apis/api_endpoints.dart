import 'package:torch_mobile/core/enums/global_enum.dart';

class ApiEndpoints {
  static const auth = "${EndpointRoute.SERVICE_HOST}/login";
  static const refreshToken = "${EndpointRoute.SERVICE_HOST}/refresh-token";
}