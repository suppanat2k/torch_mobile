import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:torch_mobile/core/enums/global_enum.dart';
import 'package:torch_mobile/core/middlewares/apis/api_exceptions.dart';
import 'package:torch_mobile/core/models/http_response.dart';
import 'package:torch_mobile/core/utils/global_state_service.dart';
import 'package:torch_mobile/core/utils/locator.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class BaseApiServices {
  Map<String, String> headers({String? tokenExtension}) {
    String token = tokenExtension ?? locator<GlobalStateService>().credential?.accessToken ?? '';
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'language': locator<GlobalStateService>().locale,
      'Authorization': 'Bearer $token',
    };
    return headers;
  }

  Uri getUrl({required String path, Map<String, dynamic>? query}) {
    /// Default hosting.
    String host = dotenv.env[EndpointRoute.SERVICE_HOST] ?? '';
    switch (path.split('/')[0]) {
      case '':

        /// Implement another route.
        break;
    }
    String url = path.replaceAll(path.split('/')[0], host);
    if (query?.isNotEmpty == true) {
      String queryParams = Uri(queryParameters: query).query;
      url = url + queryParams;
    }
    return Uri.parse(url);
  }

  Future<dynamic> responseResult(http.Response response) async {
    Map<String, dynamic> body = json.decode(response.body);
    switch (response.statusCode) {
      case 200:
        return HttpResponse(
          code: response.statusCode,
          message: body['message'],
          data: body['data'],
        );
      case 201:
        return HttpResponse(
          code: response.statusCode,
          message: body['message'],
          data: body['data'],
        );
      case 400:
        return InvalidInputException([body['message'], response.statusCode]);
      case 401:
        return UnauthorisedException([body['message'], response.statusCode]);
      case 403:
        return InvalidPermissionException([
          body['message'],
          response.statusCode,
        ]);
      case 404:
        return BadRequestException([body['message'], response.statusCode]);
      case 406:
        return UnsupportedTypeException([body['message'], response.statusCode]);
      case 500:
        return FetchDataException([body['message'], response.statusCode]);
    }
  }

  Future<dynamic> getRequest({
    required String path,
    Map<String, dynamic>? query,
  });

  Future<dynamic> postRequest({
    required String path,
    Map<String, dynamic>? payload,
  });

  Future<dynamic> putRequest({
    required String path,
    Map<String, dynamic>? payload,
  });

  Future<dynamic> deleteRequest({
    required String path,
    Map<String, dynamic>? payload,
  });

  Future<dynamic> uploadRequest({
    required String path,
    Map<String, dynamic>? payload,
  });
}
