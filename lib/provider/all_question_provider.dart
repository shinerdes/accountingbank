import 'package:accountingbank/model/question/all_question.dart';
import 'package:accountingbank/repository/all_question_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allQuestionProvider =
    FutureProvider.family<AllQuestion, int>((ref, id) async {
  final repository = ref.watch(allQuestionRepositoryProvider);

  return repository.fetchPosts(id); // Pass the ID parameter here
});
