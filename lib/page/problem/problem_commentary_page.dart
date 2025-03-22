// 해설
// 질문 -> 질문 통합 UI?
import 'package:accountingbank/provider/one_problem_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gap/gap.dart';

class ProblemCommentaryPage extends ConsumerStatefulWidget {
  const ProblemCommentaryPage({
    super.key,
    required this.correntNumber,
    required this.correntString,
    required this.id,
  });

  final String correntNumber;
  final String correntString;
  final String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProblemCommentaryPageState();
}

class _ProblemCommentaryPageState extends ConsumerState<ProblemCommentaryPage> {
  @override
  Widget build(BuildContext context) {
    final oneproblem = ref.watch(oneProblemProvider(int.parse(widget.id)));
    print(widget.id);
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        flexibleSpace: appBarBackground,
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
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Gap(10),
                      Text(
                        widget.correntString,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const Gap(10),
                      oneproblem.when(
                        data: (post) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HtmlWidget(
                            post.explanation!,
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
