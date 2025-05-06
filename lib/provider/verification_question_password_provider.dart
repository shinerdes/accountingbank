import 'package:accountingbank/page/problem/problem_fix_question_page.dart';
import 'package:accountingbank/repository/verification_question_password_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final verificationQuestionPwdNotifierProvider = StateNotifierProvider.family<
    VerificationQuestionPwdNotifier,
    AsyncValue<dynamic>,
    QuestionParams>((ref, params) {
  return VerificationQuestionPwdNotifier(
      ref.read(verificationQuestionPwdRepositoryProvider),
      params.id,
      params.password);
});

class VerificationQuestionPwdNotifier extends StateNotifier<AsyncValue<void>> {
  final VerificationQuestionPwdRepository repository;
  final String id;
  final String password;

  VerificationQuestionPwdNotifier(this.repository, this.id, this.password)
      : super(const AsyncValue.data(null));

  Future<bool> fetchData() async {
    try {
      final result = await repository.fetchData(id, password);
      state = AsyncValue.data(result);
      return result; // ✅ Update state with raw response
    } catch (e) {
      return false; // ✅ Handle errors
    }
  }
}
