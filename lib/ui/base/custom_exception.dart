import 'dart:io';

import 'package:dio/dio.dart';

class CustomException implements Exception {
  CustomException(
    Exception? _exception,
  ) {
    exception = _exception;
    if (_exception is DioException) {
      // TODO: Handle get error message
      try {
        final dioException = _exception as DioException;
        final response = dioException.response;
        _statusCode = response?.statusCode ?? statusCodeDefault;
        final data = response?.data as Map<String, dynamic>;
        final error = data['error'];
        _errorType = error['errorType'];
        isIgnored = _exception.response?.statusCode == HttpStatus.unauthorized;
      } catch (_) {
        message = _exception.message;
      }
    } else {
      message = '${'Unknown Error: '}$_exception';
    }
  }

  late Exception? exception;
  late String? message;
  late bool isIgnored = false;
  static const statusCodeDefault = 0;

  static const defaultError = 'defaultError';

  int _statusCode = statusCodeDefault;

  String? _errorType;

  int get statusCode => _statusCode;

  String? get errorType => _errorType;

  @override
  String toString() => message ?? 'An error occurred';
}
