import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final removeQuestionRepositoryProvider =
    Provider((ref) => RemoveQuestionRepository());

class RemoveQuestionRepository {
  RemoveQuestionRepository();

  final Dio dio = Dio(BaseOptions(
    baseUrl: "http://13.124.70.40/", // ✅ Make sure the API URL is correct
    headers: {"Content-Type": "application/json"}, // ✅ Important header
  ));

  Future<void> deleteUser(int id) async {
    print('siu');
    try {
      final response = await dio.delete(
          "http://13.124.70.40/api/v1/question/$id"); // ✅ DELETE request

      print(response);
      print(response.statusCode);
      print(response.data);
      if (response.statusCode == 200 || response.statusCode == 204) {
        print(response.statusCode);
        print("User deleted successfully");
      } else {
        throw Exception("Failed to delete user");
      }
    } on DioException catch (e) {
      throw Exception("Delete request failed: ${e.response?.data}");
    }
  }
}
