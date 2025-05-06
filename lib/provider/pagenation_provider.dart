import 'package:accountingbank/model/question/all_question.dart';
import 'package:accountingbank/repository/pagenation_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final paginatedPostProvider = NotifierProviderFamily<DataNotifier,
//     AsyncValue<List<AllquestionData>>, int>(
//   () => DataNotifier(),
// );

final paginatedPostProvider =
    AsyncNotifierProviderFamily<DataNotifier, List<AllquestionData>, int>(
  () => DataNotifier(),
);

// final paginatedPostProvider = AsyncNotifierProviderFamily.autoDispose<
//     PaginatedPostNotifier, List<DataInfo>, int>(
//   (id) => PaginatedPostNotifier(id),
// );

class DataNotifier extends FamilyAsyncNotifier<List<AllquestionData>, int> {
  int _currentPage = 1;
  int _totalPages = 1;
  bool _hasMore = true; // ✅ Track if more data is available
  bool _isFetching = false;

  bool get hasMore => _hasMore;

  @override
  Future<List<AllquestionData>> build(int arg) {
    return fetchData(refresh: true);
  }

  Future<List<AllquestionData>> fetchData({bool refresh = false}) async {
    if (_isFetching) return state.value ?? [];
    _isFetching = true;

    if (refresh) {
      _currentPage = 1;
      _hasMore = true;
      state = const AsyncValue.loading();
    }

    try {
      final repository = ref.read(pagenationTestRepositoryProvider);
      final dataResponse =
          await repository.fetchData(id: arg, page: _currentPage, limit: 7);

      _totalPages = dataResponse.pageInfo.totalPages;

      if (refresh) {
        state = AsyncValue.data(dataResponse.data);
      } else {
        state = AsyncValue.data([...state.value ?? [], ...dataResponse.data]);
      }

      if (dataResponse.data.isEmpty)
        _hasMore = false;
      else
        _currentPage++;

      return state.value ?? [];
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      return [];
    } finally {
      _isFetching = false;
    }
  }

  void refreshData() {
    fetchData(refresh: true);
  }

  void dispose() {
    //state = const AsyncValue.loading(); // Reset state on disposal
  }
}



// class DataNotifier
//     extends FamilyNotifier<AsyncValue<List<AllquestionData>>, int> {
//   int _currentPage = 1;
//   int _totalPages = 1;
//   bool _hasMore = true; // ✅ Track if more data is available
//   bool _isFetching = false;

//   bool get hasMore => _hasMore;

//   @override
//   AsyncValue<List<AllquestionData>> build(int arg) {
//     return const AsyncValue.loading();
//   }

//   Future<void> fetchData({bool refresh = false}) async {
//     if (_isFetching || !_hasMore) return; // ✅ Stop fetching if no more data

//     _isFetching = true;

//     if (refresh) {
//       _currentPage = 1;
//       _hasMore = true; // ✅ Reset when refreshing
//       state = const AsyncValue.loading();
//     }
//     try {
//       final repository = ref.read(pagenationTestRepositoryProvider);
//       final dataResponse =
//           await repository.fetchData(id: arg, page: _currentPage, limit: 15);

//       _totalPages = dataResponse.pageInfo.totalPages;

//       if (refresh) {
//         state = AsyncValue.data(dataResponse.data);
//       } else {
//         state = AsyncValue.data([...state.value ?? [], ...dataResponse.data]);
//       }

//       if (_currentPage >= _totalPages) {
//         _hasMore = false; // ✅ Stop fetching when last page is reached
//       } else {
//         _currentPage++;
//       }
//     } catch (e, stackTrace) {
//       state = AsyncValue.error(e, stackTrace);
//     } finally {
//       _isFetching = false;
//     }
//   }

//   void refreshData() {
//     fetchData(refresh: true);
//   }
// }


/*
class DataNotifier
    extends FamilyNotifier<AsyncValue<List<AllquestionData>>, int> {
  int _currentPage = 1;
  int _totalPages = 1;
  bool _isFetching = false;

  @override
  AsyncValue<List<AllquestionData>> build(int arg) {
    return const AsyncValue.loading();
  }

  Future<void> fetchData({bool refresh = false}) async {
    if (_isFetching || (_currentPage > _totalPages && !refresh)) return;

    _isFetching = true;

    if (refresh) {
      _currentPage = 1;
    }

    try {
      final repository = ref.read(pagenationTestRepositoryProvider);
      final dataResponse =
          await repository.fetchData(id: arg, page: _currentPage, limit: 5);

      _totalPages = dataResponse.pageInfo.totalPages;

      if (refresh) {
        state = AsyncValue.data(dataResponse.data);
      } else {
        state = AsyncValue.data([...state.value ?? [], ...dataResponse.data]);
      }
      _currentPage++;
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    } finally {
      _isFetching = false;
    }
  }

  void refreshData() {
    fetchData(refresh: true);
  }
}

*/