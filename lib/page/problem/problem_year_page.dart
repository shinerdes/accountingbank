import 'package:accountingbank/page/problem/widget/problem_year_widget.dart';
import 'package:accountingbank/provider/year_exam_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProblemYearPage extends ConsumerStatefulWidget {
  const ProblemYearPage(
      {super.key, required this.subjectId, required this.naming});

  final String subjectId;
  final String naming;

  @override
  _ProblemYearPageState createState() => _ProblemYearPageState();
}

class _ProblemYearPageState extends ConsumerState<ProblemYearPage> {
  final dio = Dio()..interceptors.add(LogInterceptor());

  @override
  Widget build(BuildContext context) {
    final allYear = ref.watch(yearExamProvider(int.parse(widget.subjectId)));

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        flexibleSpace: appBarBackground,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // 왼쪽 화살표 아이콘
          onPressed: () {
            context.go('/subject'); // 이전 페이지로 이동
          },
        ),
      ),
      body: allYear.when(
        data: (post) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: post.data.length,
                  itemBuilder: (context, index) {
                    return ProblemYearWidget(
                      id: widget.subjectId,
                      year: post.data[index].toString(),
                      name: "${widget.naming} ${post.data[index]}년",
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
