import 'package:dio/dio.dart';

Dio dioBuilder(
  String baseUrl, {
  Map<String, dynamic>? headers,
}) {
  const timeout = 60000;
  final headersMap = headers ?? <String, dynamic>{};

  final options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(milliseconds: timeout),
    receiveTimeout: const Duration(milliseconds: timeout),
    sendTimeout: const Duration(milliseconds: timeout),
    headers: headersMap,
    contentType: 'application/json',
  );

  final dio = Dio(options);
  dio.interceptors
      .addAll([LogInterceptor(requestBody: true, responseBody: true)]);
  return dio;
}
