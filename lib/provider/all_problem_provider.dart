import 'package:accountingbank/model/problem/all_problem.dart';

import 'package:accountingbank/repository/all_problem_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allProblemProvider =
    FutureProvider.family<List<AllProblem>, int>((ref, id) async {
  final repository = ref.read(allProblemRepositoryProvider);

  return repository.fetchPosts(id); // Pass the ID parameter here
});
