import 'package:accountingbank/model/subject/all_subject.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allSubjectRepositoryProvider = Provider<AllSubjectRepository>((ref) {
  final dio = ref.read(dioProvider);

  return AllSubjectRepository(dio);
});

class AllSubjectRepository {
  final Dio _dio;

  AllSubjectRepository(this._dio);

  Future<AllSubject> fetchPosts() async {
    final response = await _dio.get('/api/v1/subject?page=1&size=10');

    return AllSubject.fromJson(response.data); // Convert JSON to User
  }
}
