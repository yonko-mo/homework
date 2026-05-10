import 'package:dio/dio.dart';

class ErrorModel {
  final int code;
  final String message;

  ErrorModel({required this.code, required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      code: json['code'] as int,
      message: json['message'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'code': code, 'message': message};
  }
}

class MainException implements Exception {
  final String message;

  MainException(this.message);

  factory MainException.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return MainException('Connection timeout with API server');
      case DioExceptionType.sendTimeout:
        return MainException('Send timeout in connection with API server');
      case DioExceptionType.receiveTimeout:
        return MainException('Receive timeout in connection with API server');
      case DioExceptionType.badCertificate:
        return MainException('Bad certificate');
      case DioExceptionType.badResponse:
        return MainException(
          _handleError(
            dioException.response?.statusCode,
            dioException.response?.data,
          ),
        );
      case DioExceptionType.cancel:
        return MainException('Request to API server was cancelled');
      case DioExceptionType.connectionError:
        return MainException('No internet connection');
      case DioExceptionType.unknown:
        return MainException('Unexpected error occurred');
    }
  }

  static String _handleError(int? statusCode, dynamic responseData) {
    try {
      if (responseData != null && responseData is Map<String, dynamic>) {
        if (responseData.containsKey('error')) {
          final error = ErrorModel.fromJson(responseData['error']);
          return error.message;
        }
      }
    } catch (e) {
      // Fall through to default error handling
    }

    return switch (statusCode) {
      400 => 'Bad request',
      401 => 'Unauthorized',
      403 => 'Forbidden',
      404 => 'City not found',
      500 => 'Internal server error',
      502 => 'Bad gateway',
      503 => 'Service unavailable',
      _ => 'Error: HTTP $statusCode',
    };
  }

  @override
  String toString() => message;
}
