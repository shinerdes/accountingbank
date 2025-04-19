import 'package:accountingbank/page/answer/widget/answer_question_widget.dart';
import 'package:accountingbank/provider/all_question_provider.dart';
import 'package:accountingbank/provider/pagenation_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AnswerQuestionPage extends ConsumerStatefulWidget {
  const AnswerQuestionPage({
    super.key,
    required this.questionId,
    required this.naming,
  });

  final String questionId;
  final String naming;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProblemQuestionPageState();
}

class _ProblemQuestionPageState extends ConsumerState<AnswerQuestionPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    Future.microtask(() => ref
        .read(paginatedPostProvider(int.parse(widget.questionId)).notifier)
        .fetchData());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final notifier =
        ref.read(paginatedPostProvider(int.parse(widget.questionId)).notifier);
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      notifier.fetchData();
    }
  }

  @override
  Widget build(BuildContext context) {
    final questionId = widget.questionId;
    final allquestion =
        ref.watch(allQuestionProvider(int.parse(widget.questionId)));
    final dataState =
        ref.watch(paginatedPostProvider(int.parse(widget.questionId)));
    final notifier =
        ref.read(paginatedPostProvider(int.parse(widget.questionId)).notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        flexibleSpace: appBarBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go("/answercontent/${widget.questionId}/${widget.naming}");
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home, color: Colors.black),
            onPressed: () {
              GoRouter.of(context).go('/answer');
            },
          ),
          Gap(8.0),
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
                        itemCount: dataList.length + (notifier.hasMore ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index == dataList.length) {
                            return notifier.hasMore
                                ? const Center(child: null)
                                : const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Text(
                                        "No more data",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  );
                          }

                          final item = dataList[index];
                          return AnswerQuestionWidget(
                            id: item.id.toString(),
                            title: item.title,
                            username: item.username,
                            answeredByAdmin: item.answeredByAdmin,
                            createdAt: item.createdAt,
                            answerCount: item.answerCount,
                            questionId: questionId,
                            naming: widget.naming,
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
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          onPressed: () {
            context.push('/answernewquestion/$questionId');
          },
          child: const Icon(CupertinoIcons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
