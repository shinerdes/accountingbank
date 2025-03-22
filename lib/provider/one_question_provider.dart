import 'package:accountingbank/model/problem/one_problem.dart';
import 'package:accountingbank/model/question/one_question.dart';
import 'package:accountingbank/repository/one_problem_repository.dart';
import 'package:accountingbank/repository/one_question_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final oneQuestionProvider =
    FutureProvider.family<OneQuestion, int>((ref, id) async {
  final repository = ref.read(oneQuestionRepositoryProvider);
  return repository.fetchOneProblem(id);
});
