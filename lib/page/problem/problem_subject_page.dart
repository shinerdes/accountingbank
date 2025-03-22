import 'package:accountingbank/page/problem/widget/problem_subject_widget.dart';
import 'package:accountingbank/provider/all_subject_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProblemSubjectPage extends ConsumerStatefulWidget {
  const ProblemSubjectPage({super.key});

  @override
  _ProblemSubjectPageState createState() => _ProblemSubjectPageState();
}

class _ProblemSubjectPageState extends ConsumerState<ProblemSubjectPage> {
  final dio = Dio()
    ..interceptors.add(
      LogInterceptor(),
    );

  @override
  Widget build(BuildContext context) {
    final allsubject = ref.watch(allSubjectProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        flexibleSpace: appBarBackground,
      ),
      body: allsubject.when(
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
                    return ProblemSubjectWidget(
                        name: item.name, id: item.id.toString());
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
