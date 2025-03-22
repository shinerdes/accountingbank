import 'package:accountingbank/model/exam/subject_year_exam.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final subjectYearExamRepositoryProvider =
    Provider<SubjectYearExamRepository>((ref) {
  final dio = ref.read(dioProvider);

  return SubjectYearExamRepository(dio);
});

class SubjectYearExamRepository {
  final Dio _dio;

  SubjectYearExamRepository(this._dio);

  Future<SubjectYearExam> fetchPosts(int id, int year) async {
    final response = await _dio.get('/api/v1/exam?subjectId=$id&year=$year');

    return SubjectYearExam.fromJson(response.data); // Convert JSON to User
  }
}
