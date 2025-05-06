import 'package:accountingbank/model/problem/all_problem.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allProblemRepositoryProvider = Provider<AllProblemRepository>((ref) {
  final dio = ref.read(dioProvider);

  return AllProblemRepository(dio);
});

class AllProblemRepository {
  final Dio _dio;

  AllProblemRepository(this._dio);

  Future<List<AllProblem>> fetchPosts(int id) async {
    final response = await _dio.get('/api/v1/problem?examId=$id');
    final json = response.data as Map<String, dynamic>;
    final data = json['data'] as List;

    return data.map((json) => AllProblem.fromJson(json)).toList();
  }
}
