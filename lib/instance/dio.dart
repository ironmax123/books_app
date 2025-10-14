import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

/// Common base URL for the API (fixed for local dev).
final url = 'https://ndlsearch.ndl.go.jp/';

/// Simple API client wrapper around Dio.
/// - No headers are set (as requested).
/// - Pass relative `endpoint` like "/api/v1/orders" (base URL is common: kApiBaseUrl).
/// - For non-GET methods, pass request JSON via `data`.
/// - Optional `query` for query parameters.
class ApiClient {
  final Dio _dio;

  /// Create an [ApiClient]. Uses the project common base URL by default (kApiBaseUrl).
  ApiClient({
    Dio? dio,
    Duration connectTimeout = const Duration(seconds: 10),
    Duration receiveTimeout = const Duration(seconds: 20),
  }) : _dio =
           dio ??
           Dio(
             BaseOptions(
               baseUrl: url,
               connectTimeout: connectTimeout,
               receiveTimeout: receiveTimeout,
               responseType: ResponseType.plain,
               contentType: 'application/json',
             ),
           ) {
    // DEV ONLY: trust all SSL certificates on IO platforms (Android/iOS/macOS/Linux).
    // This does NOT work on Web and should never be used for production.
    final adapter = _dio.httpClientAdapter;
    if (adapter is IOHttpClientAdapter) {
      adapter.createHttpClient = () {
        final client = HttpClient();
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) =>
                true; // <— accept all certs
        return client;
      };
    }
  }

  /// GET /endpoint?query=...
  Future<dynamic> get(String endpoint, {Map<String, dynamic>? query}) async {
    try {
      final res = await _dio.get(endpoint, queryParameters: query);
      return res.data;
    } on DioException catch (e) {
      throw ApiClientException(
        message: e.message ?? 'GET request failed',
        statusCode: e.response?.statusCode,
        data: e.response?.data,
      );
    }
  }

  /// POST /endpoint with JSON body
  Future<dynamic> post(
    String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final res = await _dio.post(endpoint, data: data, queryParameters: query);
      return res.data;
    } on DioException catch (e) {
      throw ApiClientException(
        message: e.message ?? 'POST request failed',
        statusCode: e.response?.statusCode,
        data: e.response?.data,
      );
    }
  }

  /// PUT /endpoint with JSON body
  Future<dynamic> put(
    String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final res = await _dio.put(endpoint, data: data, queryParameters: query);
      return res.data;
    } on DioException catch (e) {
      throw ApiClientException(
        message: e.message ?? 'PUT request failed',
        statusCode: e.response?.statusCode,
        data: e.response?.data,
      );
    }
  }

  /// DELETE /endpoint with optional JSON body
  Future<dynamic> delete(
    String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final res = await _dio.delete(
        endpoint,
        data: data,
        queryParameters: query,
      );
      return res.data;
    } on DioException catch (e) {
      throw ApiClientException(
        message: e.message ?? 'DELETE request failed',
        statusCode: e.response?.statusCode,
        data: e.response?.data,
      );
    }
  }
}

/// Lightweight exception to bubble up API errors.
class ApiClientException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic data;

  ApiClientException({required this.message, this.statusCode, this.data});

  @override
  String toString() {
    return 'ApiClientException(statusCode: '
        '${statusCode?.toString() ?? 'n/a'}, message: $message, data: $data)';
  }
}
