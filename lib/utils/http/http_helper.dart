import 'dart:convert';

import 'package:dio/dio.dart';

class THttpHelper {
  static const String _baseUrl =
      'https://your-api-base-url.com'; // Replace with your API base URL
  static final Dio _dio = Dio();

  // Helper method to make a GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    try {
      final response = await _dio.get('$_baseUrl/$endpoint');
      return _handleResponse(response);
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  // Helper method to make a POST request
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    try {
      final response = await _dio.post(
        '$_baseUrl/$endpoint',
        data: json.encode(data),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return _handleResponse(response);
    } catch (e) {
      throw Exception('Failed to post data: $e');
    }
  }

  // Helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    try {
      final response = await _dio.put(
        '$_baseUrl/$endpoint',
        data: json.encode(data),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return _handleResponse(response);
    } catch (e) {
      throw Exception('Failed to update data: $e');
    }
  }

  // Helper method to make a DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    try {
      final response = await _dio.delete('$_baseUrl/$endpoint');
      return _handleResponse(response);
    } catch (e) {
      throw Exception('Failed to delete data: $e');
    }
  }

  // Handle the HTTP response
  static Map<String, dynamic> _handleResponse(Response response) {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data is Map ? response.data : json.decode(response.data);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
