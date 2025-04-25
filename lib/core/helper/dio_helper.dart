import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/strings.dart';

Dio createDio() {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 45),
      receiveTimeout: Duration(seconds: 45),
    ),
  );
  dio.interceptors.add(
    LogInterceptor(
      responseBody: true,
      error: true,
      requestHeader: false,
      responseHeader: false,
      request: true,
      requestBody: true,
    ),
  );
  return dio;
}
