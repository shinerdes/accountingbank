import 'package:accountingbank/model/exam/one_exam.dart';
import 'package:accountingbank/repository/one_exam_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final oneExamProvider = FutureProvider.family<OneExam, int>((ref, id) async {
  final repository = ref.read(oneExamRepositoryProvider);
  return repository.fetchPosts(id); // Pass the ID parameter here
});
