import 'package:accountingbank/model/exam/year_exam.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final yearExamRepositoryProvider = Provider<YearExamRepository>((ref) {
  final dio = ref.read(dioProvider);
  return YearExamRepository(dio);
});

class YearExamRepository {
  final Dio _dio;

  YearExamRepository(this._dio);

  Future<YearExam> fetchPosts(int id) async {
    final response = await _dio.get('/api/v1/exam/year?subjectId=$id');

    return YearExam.fromJson(response.data);
  }
}
