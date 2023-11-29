import 'package:dio/dio.dart';
import 'package:free_palestine/core/di/service_locator.dart';
import 'package:free_palestine/core/dio/end_points.dart';
import 'package:free_palestine/core/shared_preferences/app_prefs.dart';

const String accept = '*/*';

class ApiService {
  //final String _baseUrl = 'https://poems.karnabeet.com/api/';
  final String _baseUrl = 'https://newsapi.org/v2/';
  final Dio _dio;
  final Map<String, String> _headers = {
    'Accept': accept,
  };

  ApiService(this._dio);

  Future<String> _getAuthorizationToken({required bool isToken}) async {
    if (!isToken) return '';
    final String backedToken = await getIt.get<AppPreferences>().getAuthToken();
    return 'Bearer $backedToken';
  }

  Future<Map<String, dynamic>> _request({
    required String method,
    required Endpoint endpoint,
    Map<String, dynamic>? data,
    bool isToken = true,
    String parameter = '',
  }) async {
    _headers['Authorization'] = await _getAuthorizationToken(isToken: isToken);
    var response;
    final url = '$_baseUrl${endpoint.value}${parameter.isNotEmpty ? '?$parameter' : ''}';

    switch (method) {
      case 'GET':
        response = await _dio.get(url, options: Options(headers: _headers));
        break;
      case 'POST':
        response = await _dio.post(url, data: data, options: Options(headers: _headers));
        break;
      case 'DELETE':
        response = await _dio.delete(url, options: Options(headers: _headers));
        break;
      case 'PUT':
        response = await _dio.put(url, data: data, options: Options(headers: _headers));
        break;
    }

    return response.data;
  }

  Future<Map<String, dynamic>> get({
    required Endpoint endpoint,
    bool isToken = true,
    String parameter = '',
  }) async {
    return await _request(method: 'GET', endpoint: endpoint, isToken: isToken, parameter: parameter);
  }

  Future<Map<String, dynamic>> post({
    required Endpoint endpoint,
    Map<String, dynamic> data = const {},
    bool isToken = true,
  }) async {
    return await _request(method: 'POST', endpoint: endpoint, data: data, isToken: isToken);
  }

  Future<Map<String, dynamic>> delete({
    required Endpoint endpoint,
    bool isToken = true,
    String parameter = '',
  }) async {
    return await _request(method: 'DELETE', endpoint: endpoint, isToken: isToken, parameter: parameter);
  }

  Future<Map<String, dynamic>> put({
    required Endpoint endpoint,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    if (token != null) {
      _headers['Authorization'] = token;
    }
    return await _request(method: 'PUT', endpoint: endpoint, data: data);
  }
}
