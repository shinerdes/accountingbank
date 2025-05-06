import 'package:accountingbank/model/problem/one_problem.dart';
import 'package:accountingbank/repository/one_problem_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final oneProblemProvider =
    FutureProvider.family<OneProblem, int>((ref, id) async {
  final repository = ref.read(oneProblemRepositoryProvider);
  return repository.fetchOneProblem(id);
});
