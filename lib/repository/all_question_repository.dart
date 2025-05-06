import 'package:accountingbank/model/question/all_question.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allQuestionRepositoryProvider = Provider<AllQuestionRepository>((ref) {
  final dio = ref.read(dioProvider);
  return AllQuestionRepository(dio);
});

class AllQuestionRepository {
  final Dio _dio;

  AllQuestionRepository(this._dio);

  Future<AllQuestion> fetchPosts(int id) async {
    final response =
        await _dio.get('/api/v1/problem/$id/question?page=0&size=10');

    return AllQuestion.fromJson(response.data); // Convert JSON to User
  }
}
