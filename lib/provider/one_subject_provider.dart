import 'package:accountingbank/model/subject/one_subject.dart';
import 'package:accountingbank/repository/one_subject_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final oneSubjectProvider =
    FutureProvider.family<OneSubject, int>((ref, id) async {
  final repository = ref.read(oneSubjectRepositoryProvider);
  return repository.fetchPosts(id); // Pass the ID parameter here
});
