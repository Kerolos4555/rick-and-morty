import 'package:dio/dio.dart';

abstract class NetworkError {
  final String errorMessage;

  NetworkError({required this.errorMessage});
}

class ServerError extends NetworkError {
  ServerError({required super.errorMessage});

  factory ServerError.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerError(errorMessage: 'Connection timeout with API server');
      case DioExceptionType.sendTimeout:
        return ServerError(errorMessage: 'Send timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ServerError(errorMessage: 'Receive timeout with API server');
      case DioExceptionType.badCertificate:
        return ServerError(
          errorMessage: 'SSL/TLS certificate is not valid or trusted',
        );
      case DioExceptionType.badResponse:
        return ServerError.fromResponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerError(errorMessage: 'Request to API server was canceld');
      case DioExceptionType.connectionError:
        return ServerError(errorMessage: 'NO internet connection');
      case DioExceptionType.unknown:
        return ServerError(
          errorMessage: 'Unexpected Error, please try again later',
        );
    }
  }

  factory ServerError.fromResponse({
    required int statusCode,
    required dynamic response,
  }) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerError(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerError(
        errorMessage: 'your request not found, please try again later',
      );
    } else if (statusCode == 500) {
      return ServerError(
        errorMessage: 'Internal server error, please try again later',
      );
    } else {
      return ServerError(
        errorMessage: 'OOPS, There was an error, please try again later',
      );
    }
  }
}
