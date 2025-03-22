import 'package:accountingbank/model/answer/one_answer.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final oneAnswerRepositoryProvider = Provider<OneAnswerRepository>((ref) {
  final dio = ref.read(dioProvider);

  return OneAnswerRepository(dio);
});

class OneAnswerRepository {
  final Dio _dio;

  OneAnswerRepository(this._dio);

  Future<OneAnswer> fetchOneAnswer(int id) async {
    final response = await _dio.get('/api/v1/answer/$id');

    final data = response.data['data'];

    return OneAnswer.fromJson(data); // Convert JSON to User
  }
}
