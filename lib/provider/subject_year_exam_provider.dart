import 'package:accountingbank/model/exam/subject_year_exam.dart';
import 'package:accountingbank/page/problem/problem_round_page.dart';

import 'package:accountingbank/repository/subject_year_exam_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final subjectYearExamProvider =
    FutureProvider.family<SubjectYearExam, RoundParams>((ref, params) async {
  final repository = ref.read(subjectYearExamRepositoryProvider);
  return repository.fetchPosts(
      params.id, params.year); // Pass the ID parameter here
});
