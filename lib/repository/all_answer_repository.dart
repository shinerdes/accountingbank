import 'package:accountingbank/model/answer/all_answer.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allAnswerRepositoryProvider = Provider<AllAnswerRepository>((ref) {
  final dio = ref.read(dioProvider);

  return AllAnswerRepository(dio);
});

class AllAnswerRepository {
  final Dio _dio;

  AllAnswerRepository(this._dio);

  Future<AllAnswer> fetchPosts(int id) async {
    final response =
        await _dio.get('/api/v1/question/$id/answer?page=1&size=10');

    return AllAnswer.fromJson(response.data); // Convert JSON to User
  }
}
