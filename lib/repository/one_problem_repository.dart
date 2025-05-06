import 'package:accountingbank/model/problem/one_problem.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final oneProblemRepositoryProvider = Provider<OneProblemRepository>((ref) {
  final dio = ref.read(dioProvider);
  return OneProblemRepository(dio);
});

class OneProblemRepository {
  final Dio _dio;

  OneProblemRepository(this._dio);

  Future<OneProblem> fetchOneProblem(int id) async {
    final response = await _dio.get('/api/v1/problem/$id');

    final data = response.data['data'];

    return OneProblem.fromJson(data); // Convert JSON to User
  }
}
