import 'package:accountingbank/model/fix/fix_question.dart';
import 'package:accountingbank/repository/fix_question_patch_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fixQuestionNotifierProvider =
    StateNotifierProvider<FixQuestionPatchNotifier, AsyncValue<FixQuestion>>(
        (ref) {
  return FixQuestionPatchNotifier(ref.read(fixQuestionRepositoryProvider));
});

class FixQuestionPatchNotifier extends StateNotifier<AsyncValue<FixQuestion>> {
  final FixQuestionRepository repository;

  FixQuestionPatchNotifier(this.repository) : super(const AsyncValue.loading());

  Future<void> updatePost(int id, Map<String, dynamic> updateData) async {
    state = const AsyncValue.loading(); // ✅ Show loading state
    try {
      final updatedUser = await repository.updatePatch(id, updateData);
      state = AsyncValue.data(updatedUser); // ✅ Save updated user state
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace); // ✅ Handle errors
    }
  }
}
