import 'package:accountingbank/page/problem/widget/problem_question_widfget.dart';
import 'package:accountingbank/provider/all_question_provider.dart';
import 'package:accountingbank/provider/pagenation_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProblemQuestionPage extends ConsumerStatefulWidget {
  ProblemQuestionPage({super.key, required this.id});

  String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProblemQuestionPageState();
}

class _ProblemQuestionPageState extends ConsumerState<ProblemQuestionPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    // Load initial data
    Future.microtask(() => ref
        .read(paginatedPostProvider(int.parse(widget.id)).notifier)
        .fetchData());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final notifier =
        ref.read(paginatedPostProvider(int.parse(widget.id)).notifier);
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      notifier.fetchData();
    }
  }

  @override
  Widget build(BuildContext context) {
    String questionId = widget.id;
    final allquestion = ref.watch(allQuestionProvider(int.parse(widget.id)));

    final dataState = ref.watch(paginatedPostProvider(int.parse(widget.id)));
    final notifier =
        ref.read(paginatedPostProvider(int.parse(widget.id)).notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        flexibleSpace: appBarBackground,
        actions: [
          IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                GoRouter.of(context).go('/subject');
              }),
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          color: Colors.lightBlue,
          backgroundColor: Colors.white,
          onRefresh: () async {
            notifier.refreshData();
          },
          child: dataState.when(
            data: (dataList) {
              if (dataList.isEmpty) {
                return const Center(child: Text("질문이 없습니다."));
              }
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        controller: _scrollController,
                        itemCount: dataList.length +
                            (notifier.hasMore
                                ? 1
                                : 0), // ✅ No extra item if no more data
                        itemBuilder: (context, index) {
                          if (index == dataList.length) {
                            return notifier.hasMore
                                ? const Center(
                                    child:
                                        null) // ✅ Show only if more data is available
                                : const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Text("No more data",
                                          style: TextStyle(color: Colors.grey)),
                                    ),
                                  ); // ✅ Show message instead of loader when no more data
                          }

                          final item = dataList[index];
                          return ProblemQuestionWidfget(
                            id: item.id.toString(),
                            title: item.title,
                            username: item.username,
                            answeredByAdmin: item.answeredByAdmin,
                            createdAt: item.createdAt,
                            answerCount: item.answerCount,
                            questionId: questionId,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, _) => Center(child: Text("Error: $error")),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          onPressed: () {
            context.push('/problemnewquestion/$questionId');
          },
          tooltip: 'new',
          child: const Icon(
            CupertinoIcons.add,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
