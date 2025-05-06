import 'package:accountingbank/page/problem/widget/problem_round_widget.dart';
import 'package:accountingbank/provider/subject_year_exam_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProblemRoundPage extends ConsumerStatefulWidget {
  const ProblemRoundPage(
      {super.key,
      required this.subjectId,
      required this.year,
      required this.naming});

  final String subjectId;
  final String year;
  final String naming;

  @override
  _ProblemRoundPageState createState() => _ProblemRoundPageState();
}

class _ProblemRoundPageState extends ConsumerState<ProblemRoundPage> {
  final dio = Dio()..interceptors.add(LogInterceptor());

  String _processNaming(String naming) {
    return naming.replaceAll(RegExp(r'\s\d+년'), ""); // " 숫자년" 패턴 제거
  }

  @override
  Widget build(BuildContext context) {
    String result = _processNaming(widget.naming);

    final params =
        RoundParams(int.parse(widget.subjectId), int.parse(widget.year));
    final subjectYearExam = ref.watch(subjectYearExamProvider(params));
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        flexibleSpace: appBarBackground,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // 왼쪽 화살표 아이콘
          onPressed: () {
            String result = _processNaming(widget.naming); // 네이밍의 통합
            context.go('/year/${widget.subjectId}/$result'); // 이전 페이지로 이동
          },
        ),
      ),
      body: subjectYearExam.when(
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
                    final item = post.data[index];
                    return ProblemRoundWidget(
                      id: item.id.toString(),
                      year: widget.year,
                      round: item.name,
                      name: '${widget.naming} ${item.name}',
                      roundid: widget.subjectId,
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

class RoundParams {
  final int id;
  final int year;

  RoundParams(this.id, this.year);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoundParams &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          year == other.year;

  @override
  int get hashCode => id.hashCode ^ year.hashCode;
}
