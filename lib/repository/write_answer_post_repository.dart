import 'package:accountingbank/model/write/write_answer.dart';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final writeAnswerRepositoryProvider = Provider<WriteAnswerRepository>((ref) {
  return WriteAnswerRepository();
});

class WriteAnswerRepository {
  WriteAnswerRepository();

  final _dio = Dio(BaseOptions(
    baseUrl: "http://13.124.70.40/api/v1/question/1/answer",
    headers: {"Content-Type": "application/json"},
  ))
    ..interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
    ));

  Future<WriteAnswer> createPost(WriteAnswer post, String id) async {
    try {
      final response = await _dio.post(
        "http://13.124.70.40/api/v1/question/$id/answer",
        data: post.toJson(), // Send the JSON data
      );
      return WriteAnswer.fromJson(response.data); // Freeze the response
    } catch (e) {
      throw Exception("Failed to create post: $e");
    }
  }
}
