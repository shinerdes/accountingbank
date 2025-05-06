import 'package:accountingbank/model/write/write_question.dart';
import 'package:accountingbank/repository/write_question_post_repository.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final writeQuestionNotifierProvider = StateNotifierProvider<
    WriteQuestionPostNotifier, AsyncValue<WriteQuestion?>>((ref) {
  return WriteQuestionPostNotifier(ref.watch(writeQuestionRepositoryProvider));
});

class WriteQuestionPostNotifier
    extends StateNotifier<AsyncValue<WriteQuestion?>> {
  final WriteQuestionRepository _repository;

  WriteQuestionPostNotifier(this._repository)
      : super(const AsyncValue.data(null));

  Future<void> createPost(WriteQuestion post, String id) async {
    state = const AsyncValue.loading();
    try {
      final newPost = await _repository.createPost(post, id);
      state = AsyncValue.data(newPost);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
