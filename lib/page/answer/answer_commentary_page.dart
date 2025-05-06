import 'package:accountingbank/provider/one_problem_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AnswerCommentaryPage extends ConsumerStatefulWidget {
  const AnswerCommentaryPage({
    super.key,
    required this.correntNumber,
    required this.correntString,
    required this.examId,
    required this.naming,
  });

  final String correntNumber;
  final String correntString;
  final String examId;
  final String naming;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AnswerCommentaryPageState();
}

class _AnswerCommentaryPageState extends ConsumerState<AnswerCommentaryPage> {
  @override
  Widget build(BuildContext context) {
    final oneproblem = ref.watch(oneProblemProvider(int.parse(widget.examId)));

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: appBarBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go("/answercontent/${widget.examId}/${widget.naming}");
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
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '정답: ${widget.correntNumber}번',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(10),
                      Text(
                        widget.correntString,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(10),
                      oneproblem.when(
                        data: (post) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HtmlWidget(
                            post.explanation ?? "",
                            customStylesBuilder: (element) {
                              switch (element.localName) {
                                case 'table':
                                  return {
                                    'border': '1px solid',
                                    'border-collapse': 'collapse',
                                  };
                                case 'td':
                                  return {'border': '1px solid'};
                                default:
                                  return null;
                              }
                            },
                          ),
                        ),
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        error: (error, _) =>
                            Center(child: Text('Error: $error')),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
