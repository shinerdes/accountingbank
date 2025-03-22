import 'package:accountingbank/model/fix/fix_answer.dart';
import 'package:accountingbank/model/fix/fix_question.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fixAnswerRepositoryProvider = Provider<FixAnswerRepository>((ref) {
  return FixAnswerRepository();
});

class FixAnswerRepository {
  FixAnswerRepository();

  //final String baseUrl = "http://13.124.70.40/api/v1/question/50";
  final _dio = Dio(BaseOptions(
    baseUrl: "http://13.124.70.40/api/v1/problem/1/question",
    headers: {"Content-Type": "application/json"},
  ))
    ..interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
    ));
  Future<FixAnswer> updatePatch(
      String id, Map<String, dynamic> updateData) async {
    try {
      final response = await _dio.patch(
        "http://13.124.70.40/api/v1/answer/$id",
        data: updateData, // ✅ Sending partial data for PATCH
      );

      return FixAnswer.fromJson(response.data); // ✅ Convert response to model
    } on DioException catch (e) {
      throw Exception("Failed to update user: ${e.response?.data}");
    }
  }
}
