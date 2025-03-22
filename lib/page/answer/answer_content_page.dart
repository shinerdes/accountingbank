import 'package:accountingbank/provider/one_problem_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';

class AnswerContentPage extends ConsumerStatefulWidget {
  AnswerContentPage({super.key, required this.id, required this.naming});

  String id;
  String naming;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AnswerContentPageState();
}

class _AnswerContentPageState extends ConsumerState<AnswerContentPage> {
  @override
  Widget build(BuildContext context) {
    final oneproblem = ref.watch(oneProblemProvider(int.parse(widget.id)));
    final screen = MediaQuery.of(context).size;
    print(widget.naming);
    print('widget.id');
    print(widget.id);
    int correntNumber = 0;

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
              child: oneproblem.when(
                data: (post) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 1.0),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.lightBlue,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.naming,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                HtmlWidget(
                                  post.content,
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
                                const SizedBox(height: 8.0),
                                Text('① ${post.choices[0].content}'),
                                const SizedBox(height: 8.0),
                                Text('② ${post.choices[1].content}'),
                                const SizedBox(height: 8.0),
                                Text('③ ${post.choices[2].content}'),
                                const SizedBox(height: 8.0),
                                Text('④ ${post.choices[3].content}'),
                                const SizedBox(height: 8.0),
                                Text('⑤ ${post.choices[4].content}'),
                                const SizedBox(height: 8.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.lightBlue,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: TextButton(
                                onPressed: () {
                                  for (int i = 0; i < 5; i++) {
                                    print(post.choices[i].isAnswer);

                                    if (post.choices[i].isAnswer == true) {
                                      correntNumber = i + 1;
                                      print('정답 $correntNumber');
                                    }
                                  }

                                  context.push(
                                      '/answercommentary/${correntNumber.toString()}/${post.choices[correntNumber - 1].content}/${post.id}');
                                },
                                child: const Text(
                                  "해설",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextButton(
                                onPressed: () {
                                  context.push('/problemquestion/${post.id}');
                                },
                                child: const Text(
                                  "질문",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, _) => Center(child: Text('Error: $error')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
