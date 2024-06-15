import 'dart:io';

import 'package:dio/dio.dart';

class CustomException implements Exception {
  CustomException(Exception? err) {
    exception = err;
    if (err is DioException) {
      // TODO: Handle get error message
      try {
        final data = err.response?.data as Map<String, dynamic>;
        message = data['msg'];
        isIgnored = err.response?.statusCode == HttpStatus.unauthorized;
      } catch (_) {
        message = err.message;
      }
    } else {
      message = '${'Unknown Error: '}$err';
    }
  }

  late Exception? exception;
  late String? message;
  late bool isIgnored = false;

  @override
  String toString() => message ?? 'An error occurred';
}
