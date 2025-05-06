import 'package:accountingbank/model/answer/all_answer.dart';
import 'package:accountingbank/repository/all_answer_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final allAnswerProvider =
//     FutureProvider.family<AllAnswer, int>((ref, id) async {
//   final repository = ref.watch(allAnswerRepositoryProvider);

//   return repository.fetchPosts(id); // Pass the ID parameter here
// });

final allAnswerProvider =
    FutureProvider.family<AllAnswer, int>((ref, id) async {
  final repository = ref.watch(allAnswerRepositoryProvider);

  return repository.fetchPosts(id); // Pass the ID parameter here
});

// Family provider to handle dynamic post ID fetching
// final allAnswerProvider =
//     StateNotifierProvider.family<PostNotifier, AsyncValue<AllAnswer?>, int>(
//         (ref, id) {
//   final repository = ref.watch(allAnswerRepositoryProvider);
//   return PostNotifier(repository)..fetchPost(id);
// });

// class PostNotifier extends StateNotifier<AsyncValue<AllAnswer?>> {
//   final AllAnswerRepository repository;

//   PostNotifier(this.repository) : super(const AsyncValue.loading());

//   // Fetch the post by ID
//   Future<void> fetchPost(int id) async {
//     state = const AsyncValue.loading();
//     try {
//       final post = await repository.fetchPosts(id);
//       state = AsyncValue.data(post);
//     } catch (e) {
//       state = AsyncValue.error(e, StackTrace.empty);
//     }
//   }

//   // Clear data
//   void clearData() {
//     state = const AsyncValue.data(null); // Reset state
//   }
// }
