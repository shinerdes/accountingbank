import 'package:accountingbank/model/fix/fix_question.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fixQuestionRepositoryProvider = Provider<FixQuestionRepository>((ref) {
  return FixQuestionRepository();
});

class FixQuestionRepository {
  FixQuestionRepository();

  final _dio = Dio(BaseOptions(
    baseUrl: "http://13.124.70.40/api/v1/problem/1/question",
    headers: {"Content-Type": "application/json"},
  ))
    ..interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
    ));
  Future<FixQuestion> updatePatch(
      int id, Map<String, dynamic> updateData) async {
    try {
      final response = await _dio.patch(
        "http://13.124.70.40/api/v1/question/$id",
        data: updateData, // ✅ Sending partial data for PATCH
      );

      return FixQuestion.fromJson(response.data); // ✅ Convert response to model
    } on DioException catch (e) {
      throw Exception("Failed to update user: ${e.response?.data}");
    }
  }
}
