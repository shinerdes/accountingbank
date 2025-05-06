import 'package:accountingbank/model/answer/one_answer.dart';

import 'package:accountingbank/repository/one_answer_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final oneAnswerProvider =
    FutureProvider.family<OneAnswer, int>((ref, id) async {
  final repository = ref.read(oneAnswerRepositoryProvider);
  return repository.fetchOneAnswer(id);
});
