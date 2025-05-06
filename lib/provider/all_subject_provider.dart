import 'package:accountingbank/model/subject/all_subject.dart';
import 'package:accountingbank/repository/all_subject_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allSubjectProvider = FutureProvider<AllSubject>((ref) async {
  final repository = ref.read(allSubjectRepositoryProvider);
  return repository.fetchPosts(); // Pass the ID parameter here
});
