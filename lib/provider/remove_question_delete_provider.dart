import 'package:accountingbank/repository/remove_question_delete_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final removeQuestionNotifierProvider =
    StateNotifierProvider<RemoveQuestionDeleteNotifier, AsyncValue<void>>(
        (ref) {
  return RemoveQuestionDeleteNotifier(
      ref.read(removeQuestionRepositoryProvider));
});

class RemoveQuestionDeleteNotifier extends StateNotifier<AsyncValue<void>> {
  final RemoveQuestionRepository repository;

  RemoveQuestionDeleteNotifier(this.repository)
      : super(const AsyncValue.data(null));

  Future<void> deleteUser(int id) async {
    state = const AsyncValue.loading(); // ✅ Show loading state
    try {
      await repository.deleteUser(id);
      state = const AsyncValue.data(null); // ✅ Success (set state to empty)
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace); // ✅ Handle errors
    }
  }
}
