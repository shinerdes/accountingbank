import 'package:accountingbank/model/question/one_question.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final oneQuestionRepositoryProvider = Provider<OneQuestionRepository>((ref) {
  final dio = ref.read(dioProvider);

  return OneQuestionRepository(dio);
});

class OneQuestionRepository {
  final Dio _dio;

  OneQuestionRepository(this._dio);

  Future<OneQuestion> fetchOneProblem(int id) async {
    final response = await _dio.get('/api/v1/question/$id');

    final data = response.data['data'];

    return OneQuestion.fromJson(data); // Convert JSON to User
  }
}
