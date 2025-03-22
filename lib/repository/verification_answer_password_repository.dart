import 'package:accountingbank/model/verification/verification.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final verificationAnswerPwdRepositoryProvider =
    Provider((ref) => VerificationAnswerPwdRepository());

class VerificationAnswerPwdRepository {
  final Dio dio = Dio(BaseOptions(
    baseUrl: "https://example.com/api",
    headers: {"Content-Type": "application/json"},
  ));

  Future<dynamic> fetchData(String id, String password) async {
    print('눌렀다 444444');
    try {
      print('눌렀다2222222');
      final response = await dio.get(
          "http://13.124.70.40/api/v1/answer/$id/verification?password=$password");

      print(response.data);
      print(response.data['data']);
      print('response.data');
      var pwdCheck = response.data['data'] as bool;
      print(pwdCheck);

      return pwdCheck;
    } on DioException catch (e) {
      throw Exception("Failed to fetch data: ${e.response?.data}");
    }
  }
}
