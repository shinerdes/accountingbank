import 'package:accountingbank/model/fix/fix_question.dart';
import 'package:dio/dio.dart';

class FixService {
  final String baseUrl = "http://13.124.70.40";

  Future<FixQuestion> updatePost(
      int postId, Map<String, dynamic> updates) async {
    final Dio dio = Dio();
    try {
      final response = await dio.patch("$baseUrl/$postId", data: updates);

      return FixQuestion.fromJson(response.data); // Freeze the response
    } catch (e) {
      throw Exception("Failed to update post: $e");
    }
  }
}
