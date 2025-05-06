import 'package:accountingbank/model/exam/year_exam.dart';
import 'package:accountingbank/repository/year_exam_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final yearExamProvider = FutureProvider.family<YearExam, int>((ref, id) async {
  final repository = ref.read(yearExamRepositoryProvider);
  return repository.fetchPosts(id); // Pass the ID parameter here
});
