import 'package:accountingbank/page/problem/problem_fix_answer_page.dart';
import 'package:accountingbank/repository/verification_answer_password_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final verificationAnswerPwdNotifierProvider = StateNotifierProvider.family<
    VerificationAnswerPwdNotifier,
    AsyncValue<dynamic>,
    AnswerParams>((ref, params) {
  return VerificationAnswerPwdNotifier(
      ref.read(verificationAnswerPwdRepositoryProvider),
      params.id,
      params.password);
});

class VerificationAnswerPwdNotifier extends StateNotifier<AsyncValue<void>> {
  final VerificationAnswerPwdRepository repository;
  final String id;
  final String password;

  VerificationAnswerPwdNotifier(this.repository, this.id, this.password)
      : super(const AsyncValue.data(null));

  Future<bool> fetchData() async {
    state = const AsyncValue.loading(); // ✅ Show loading state

    print('눌렀다11111111');

    try {
      print('눌렀다 33333333');
      final result = await repository.fetchData(id, password);
      state = AsyncValue.data(result);
      return result; // ✅ Update state with raw response
    } catch (e) {
      return false; // ✅ Handle errors
    }
  }
}
