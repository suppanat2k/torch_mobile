import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:torch_mobile/core/middlewares/apis/api_endpoints.dart';
import 'package:torch_mobile/core/middlewares/apis/api_exceptions.dart';
import 'package:torch_mobile/core/middlewares/apis/base_api_services.dart';
import 'package:torch_mobile/core/models/api_response_model.dart';
import 'package:torch_mobile/core/utils/locator/global_state_service.dart';
import 'package:torch_mobile/core/utils/locator/app_locator.dart';

class APIService extends BaseApiServices {
  Future<dynamic> getRefreshToken() async {
    String path = ApiEndpoints.refreshToken;
    dynamic response;
    try {
      response = await http.post(
        getUrl(path: path),
        body: {},
        headers: headers(
          tokenExtension:
              appLocator<GlobalStateService>().credential?.refreshToken,
        ),
      );
      return await responseResult(response);
    } catch (e) {
      debugPrint("🔑 ❌ REFRESH-TOKEN failed: $e");
      return await responseResult(response);
    }
  }

  @override
  Future<dynamic> getRequest({
    required String path,
    Map<String, dynamic>? query,
  }) async {
    dynamic response;
    try {
      response = await http.get(
        getUrl(path: path, query: query),
        headers: headers(),
      );
      if (responseResult(response) is InvalidPermissionException) {
        final responseRefresh = await getRefreshToken();
        if (responseRefresh is ApiResponseModel) {
          response = await http.get(
            getUrl(path: path, query: query),
            headers: headers(),
          );
        }
      }
      return await responseResult(response);
    } catch (e) {
      debugPrint("❌ GET method failed: $e");
      return await responseResult(response);
    }
  }

  @override
  Future postRequest({
    required String path,
    Map<String, dynamic>? payload,
  }) async {
    dynamic response;
    try {
      response = await http.post(
        getUrl(path: path),
        headers: headers(),
        body: payload,
      );
      if (responseResult(response) is InvalidPermissionException) {
        final responseRefresh = await getRefreshToken();
        if (responseRefresh is ApiResponseModel) {
          response = await http.post(
            getUrl(path: path),
            headers: headers(),
            body: payload,
          );
        }
      }
      return await responseResult(response);
    } catch (e) {
      debugPrint("❌ POST method failed: $e");
      return await responseResult(response);
    }
  }

  @override
  Future putRequest({
    required String path,
    Map<String, dynamic>? payload,
  }) async {
    dynamic response;
    try {
      response = await http.put(
        getUrl(path: path),
        headers: headers(),
        body: payload,
      );
      if (responseResult(response) is InvalidPermissionException) {
        final responseRefresh = await getRefreshToken();
        if (responseRefresh is ApiResponseModel) {
          response = await http.put(
            getUrl(path: path),
            headers: headers(),
            body: payload,
          );
        }
      }
      return await responseResult(response);
    } catch (e) {
      debugPrint("❌ PUT method failed: $e");
      return await responseResult(response);
    }
  }

  @override
  Future deleteRequest({
    required String path,
    Map<String, dynamic>? payload,
  }) async {
    dynamic response;
    try {
      response = await http.delete(
        getUrl(path: path),
        headers: headers(),
        body: payload,
      );
      if (responseResult(response) is InvalidPermissionException) {
        final responseRefresh = await getRefreshToken();
        if (responseRefresh is ApiResponseModel) {
          response = await http.delete(
            getUrl(path: path),
            headers: headers(),
            body: payload,
          );
        }
      }
      return await responseResult(response);
    } catch (e) {
      debugPrint("❌ DELETE method failed: $e");
      return await responseResult(response);
    }
  }

  @override
  Future uploadRequest({
    required String path,
    Map<String, dynamic>? payload,
  }) async {
    throw UnimplementedError();
  }
}
