import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'http://13.124.70.40',
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 5000),
    ),
  );
  dio.options.contentType = 'application/x-www-form-urlencoded';
  dio.options.contentType = Headers.formUrlEncodedContentType;
  return dio;
});
