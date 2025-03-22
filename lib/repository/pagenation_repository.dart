import 'package:accountingbank/model/question/all_question.dart';
import 'package:accountingbank/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pagenationTestRepositoryProvider =
    Provider<PagenationTestRepository>((ref) {
  final dio = ref.read(dioProvider);

  return PagenationTestRepository(dio);
});

class PagenationTestRepository {
  final Dio _dio;

  PagenationTestRepository(this._dio);

  Future<AllQuestion> fetchData(
      {required int id, required int page, required int limit}) async {
    final response = await _dio.get(
      '/api/v1/problem/$id/question',
      queryParameters: {
        'page': page,
        'limit': limit,
      },
    );

    if (response.statusCode == 200) {
      return AllQuestion.fromJson(response.data);
    } else {
      throw Exception("Failed to fetch data");
    }
  }
}
