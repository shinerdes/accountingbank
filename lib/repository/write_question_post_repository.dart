import 'package:accountingbank/model/write/write_question.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provide repository instance
final writeQuestionRepositoryProvider =
    Provider<WriteQuestionRepository>((ref) {
  return WriteQuestionRepository();
});

class WriteQuestionRepository {
  WriteQuestionRepository();

  final _dio = Dio(BaseOptions(
    baseUrl: "http://13.124.70.40/api/v1/problem/1/question",
    headers: {"Content-Type": "application/json"},
  ))
    ..interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
    ));

  Future<WriteQuestion> createPost(WriteQuestion post, String id) async {
    try {
      final response = await _dio.post(
        "http://13.124.70.40/api/v1/problem/$id/question",
        data: post.toJson(), // Send the JSON data
      );

      return WriteQuestion.fromJson(response.data); // Freeze the response
    } catch (e) {
      throw Exception("Failed to create post: $e");
    }
  }
}
