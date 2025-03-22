import 'package:accountingbank/model/subject/one_subject.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final oneSubjectRepositoryProvider = Provider<OneSubjectRepository>((ref) {
  final dio = ref.read(dioProvider);

  return OneSubjectRepository(dio);
});

class OneSubjectRepository {
  final Dio _dio;

  OneSubjectRepository(this._dio);

  Future<OneSubject> fetchPosts(int id) async {
    final response = await _dio.get('/api/v1/subject/$id');
    final data = response.data['data'];

    return OneSubject.fromJson(data); // Convert JSON to User
  }
}
