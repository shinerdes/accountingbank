import 'package:accountingbank/model/exam/one_exam.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final oneExamRepositoryProvider = Provider<OneExamRepository>((ref) {
  final dio = ref.read(dioProvider);
  return OneExamRepository(dio);
});

class OneExamRepository {
  final Dio _dio;

  OneExamRepository(this._dio);

  Future<OneExam> fetchPosts(int id) async {
    final response = await _dio.get('/api/v1/exam/$id');
    final data = response.data['data'];

    return OneExam.fromJson(data); // Convert JSON to User
  }
}
