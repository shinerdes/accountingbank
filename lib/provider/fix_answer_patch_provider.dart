import 'package:accountingbank/model/fix/fix_answer.dart';
import 'package:accountingbank/repository/fix_answer_patch_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fixAnswerNotifierProvider =
    StateNotifierProvider<FixAnswerPatchNotifier, AsyncValue<FixAnswer>>((ref) {
  return FixAnswerPatchNotifier(ref.read(fixAnswerRepositoryProvider));
});

class FixAnswerPatchNotifier extends StateNotifier<AsyncValue<FixAnswer>> {
  final FixAnswerRepository repository;

  FixAnswerPatchNotifier(this.repository) : super(const AsyncValue.loading());

  Future<void> updatePost(String id, Map<String, dynamic> updateData) async {
    state = const AsyncValue.loading(); // ✅ Show loading state
    try {
      final updatedUser = await repository.updatePatch(id, updateData);
      state = AsyncValue.data(updatedUser); // ✅ Save updated user state
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace); // ✅ Handle errors
    }
  }
}
