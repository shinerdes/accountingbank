import 'package:accountingbank/model/write/write_answer.dart';
import 'package:accountingbank/repository/write_answer_post_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final writeAnswerNotifierProvider =
    StateNotifierProvider<WriteAnswerPostNotifier, AsyncValue<WriteAnswer?>>(
        (ref) {
  return WriteAnswerPostNotifier(ref.watch(writeAnswerRepositoryProvider));
});

class WriteAnswerPostNotifier extends StateNotifier<AsyncValue<WriteAnswer?>> {
  final WriteAnswerRepository _repository;

  WriteAnswerPostNotifier(this._repository)
      : super(const AsyncValue.data(null));

  Future<void> createPost(WriteAnswer post, String id) async {
    state = const AsyncValue.loading();
    try {
      final newPost = await _repository.createPost(post, id);
      state = AsyncValue.data(newPost);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
