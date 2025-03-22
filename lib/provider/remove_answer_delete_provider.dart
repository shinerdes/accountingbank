import 'package:accountingbank/repository/remove_answer_delete_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final removeAnswerNotifierProvider =
    StateNotifierProvider<RemoveAnswerDeleteNotifier, AsyncValue<void>>((ref) {
  return RemoveAnswerDeleteNotifier(ref.read(removeAnswerRepositoryProvider));
});

class RemoveAnswerDeleteNotifier extends StateNotifier<AsyncValue<void>> {
  final RemoveAnswerRepository repository;

  RemoveAnswerDeleteNotifier(this.repository)
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
