import 'package:accountingbank/model/question/one_question.dart';
import 'package:accountingbank/page/problem/problem_fix_answer_page.dart';
import 'package:accountingbank/page/problem/problem_fix_question_page.dart';
import 'package:accountingbank/page/problem/widget/problem_answer_widget.dart';
import 'package:accountingbank/provider/all_answer_provider.dart';
import 'package:accountingbank/provider/all_question_provider.dart';
import 'package:accountingbank/provider/one_question_provider.dart';
import 'package:accountingbank/provider/pagenation_provider.dart';
import 'package:accountingbank/provider/remove_answer_delete_provider.dart';
import 'package:accountingbank/provider/remove_question_delete_provider.dart';
import 'package:accountingbank/provider/verification_answer_password_provider.dart';
import 'package:accountingbank/provider/verification_question_password_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:accountingbank/timeago.dart';
import 'package:accountingbank/top_snack_bar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class ProblemAnswerPage extends ConsumerStatefulWidget {
  const ProblemAnswerPage({
    super.key,
    required this.id,
    required this.questionId,
    required this.examId,
    required this.naming,
    required this.roundId,
    required this.year,
    required this.pageNumber,
  });

  final String id;
  final String questionId;

  final String examId;
  final String naming;
  final String roundId;
  final String year;
  final String pageNumber;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProblemAnswerPageState();
}

final dio = Dio()
  ..interceptors.add(
    LogInterceptor(),
  );

class _ProblemAnswerPageState extends ConsumerState<ProblemAnswerPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final allanswer = ref.watch(allAnswerProvider(int.parse(widget.id)));
    final oneQuestion = ref.watch(oneQuestionProvider(int.parse(widget.id)));

    TextEditingController removeQuestionTextController =
        TextEditingController();

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: appBarBackground,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.go(
                '/problemquestion/${widget.questionId}/${widget.examId}/${widget.roundId}/${widget.year}/${widget.naming}/${widget.pageNumber}');
          },
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              onPressed: () {
                GoRouter.of(context).go('/subject');
              }),
          Gap(8.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(10),
            oneQuestion.when(
              data: (post) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.blue, spreadRadius: 1.0),
                  ],
                ),
                width: MediaQuery.of(context).size.width - 32,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 270),
                            child: Text(
                              post.title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.person_alt,
                                size: 20,
                              ),
                              const Gap(5),
                              Text(post.username),
                            ],
                          ),
                          Text(convertToAgo(DateTime.parse(post.createdAt)
                              .add(const Duration(hours: 9)))),
                        ],
                      ),
                      const Gap(10),
                      Text(post.content),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              context.push(
                                  '/problemfixquestion/${widget.id}/${post.title}/${post.content}/${widget.questionId}');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    color: Colors.blue, width: 2.0),
                              ),
                              backgroundColor: Colors.lightBlue,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text('수정'),
                          ),
                          const Gap(10),
                          ElevatedButton(
                            onPressed: () {
                              if (post.answerCount == 0) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return StatefulBuilder(
                                      builder: (context, setState) {
                                        return AlertDialog(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                color: Colors.blue, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          title: const Text(
                                            "비밀번호를 입력하세요",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          content: TextField(
                                            obscureText: _obscureText,
                                            keyboardType: TextInputType.number,
                                            inputFormatters: [
                                              FilteringTextInputFormatter
                                                  .digitsOnly,
                                              LengthLimitingTextInputFormatter(
                                                  8),
                                            ],
                                            cursorColor: Colors.black,
                                            controller:
                                                removeQuestionTextController,
                                            decoration: InputDecoration(
                                              suffixIcon: IconButton(
                                                icon: Icon(
                                                  _obscureText
                                                      ? Icons.visibility_off
                                                      : Icons.visibility,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _obscureText =
                                                        !_obscureText;
                                                  });
                                                },
                                              ),
                                              focusedBorder:
                                                  const OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.orange,
                                                    width: 2.0),
                                              ),
                                              enabledBorder:
                                                  const OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 2.0),
                                              ),
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                removeQuestionTextController
                                                    .text = '';
                                                _obscureText = true;
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  side: const BorderSide(
                                                      color: Colors.blue,
                                                      width: 2.0),
                                                ),
                                                backgroundColor:
                                                    Colors.lightBlue,
                                                foregroundColor: Colors.white,
                                              ),
                                              child: const Text(
                                                '취소',
                                                style: TextStyle(fontSize: 15),
                                              ),
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  side: const BorderSide(
                                                      color: Colors.blue,
                                                      width: 2.0),
                                                ),
                                                backgroundColor:
                                                    Colors.lightBlue,
                                                foregroundColor: Colors.white,
                                              ),
                                              onPressed: () async {
                                                ref
                                                    .read(verificationQuestionPwdNotifierProvider(
                                                            QuestionParams(
                                                                widget.id,
                                                                removeQuestionTextController
                                                                    .text))
                                                        .notifier)
                                                    .fetchData()
                                                    .then(
                                                  (value) async {
                                                    if (value == true) {
                                                      await ref
                                                          .read(
                                                              removeQuestionNotifierProvider
                                                                  .notifier)
                                                          .deleteUser(int.parse(
                                                              widget.id));

                                                      context.pop();
                                                      context.go(
                                                          '/problemquestion/${widget.questionId}/${widget.examId}/${widget.roundId}/${widget.year}/${widget.naming}/${widget.pageNumber}');

                                                      ref.invalidate(
                                                          allQuestionProvider(
                                                              int.parse(widget
                                                                  .questionId)));

                                                      ref.invalidate(
                                                          paginatedPostProvider(
                                                              int.parse(widget
                                                                  .questionId)));

                                                      // 삭제하는 popup
                                                      showTopSnackBar(
                                                        Overlay.of(context),
                                                        TopSnackBar.success(
                                                          message:
                                                              "질문이 삭제되었습니다.",
                                                        ),
                                                      );

                                                      Future.microtask(() => ref
                                                          .read(paginatedPostProvider(
                                                                  int.parse(widget
                                                                      .questionId))
                                                              .notifier)
                                                          .refreshData());
                                                    } else {
                                                      showDialog(
                                                        context: context,
                                                        builder: (BuildContext
                                                                context) =>
                                                            AlertDialog(
                                                          backgroundColor:
                                                              Colors.white,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            side:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .blue,
                                                                    width: 2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                          title: const Text(
                                                            '실패',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 20),
                                                          ),
                                                          content:
                                                              const SizedBox(
                                                            height: 55,
                                                            child: Text(
                                                                '비밀번호가 다릅니다.',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontSize:
                                                                        15)),
                                                          ),
                                                          actions: [
                                                            ElevatedButton(
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  side: const BorderSide(
                                                                      color: Colors
                                                                          .blue,
                                                                      width:
                                                                          2.0),
                                                                ),
                                                                backgroundColor:
                                                                    Colors
                                                                        .lightBlue,
                                                                foregroundColor:
                                                                    Colors
                                                                        .white,
                                                              ),
                                                              onPressed: () {
                                                                context.pop();
                                                              },
                                                              child: const Text(
                                                                  '확인'),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                  },
                                                );
                                              },
                                              child: const Text(
                                                "확인",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                            )
                                          ],
                                        );
                                      },
                                    );
                                  },
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Colors.blue, width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    title: const Text(
                                      '실패',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    content: const SizedBox(
                                      height: 55,
                                      child: Text('답변이 달린 질문은 삭제 할 수 없습니다.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15)),
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.blue, width: 2.0),
                                          ),
                                          backgroundColor: Colors.lightBlue,
                                          foregroundColor: Colors.white,
                                        ),
                                        onPressed: () {
                                          context.pop();
                                        },
                                        child: const Text('확인'),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    color: Colors.blue, width: 2.0),
                              ),
                              backgroundColor: Colors.lightBlue,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text('삭제'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(child: Text('Error: $error')),
            ),
            const Gap(20),
            const Divider(
              thickness: 1,
              height: 1,
              color: Colors.lightBlue,
              indent: 16.0,
              endIndent: 16.0,
            ),
            allanswer.when(
              data: (post) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            context.push(
                                '/problemnewanswer/${widget.id}/${widget.questionId}');
                          },
                          icon: const Icon(
                            CupertinoIcons.add,
                            color: Colors.lightBlue,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    const Gap(10),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: post.data.length,
                      itemBuilder: (context, index) {
                        final item = post.data[index];
                        return ProblemAnswerWidget(
                          username: item.username,
                          content: item.content,
                          createdAt: item.createdAt,
                          id: item.id.toString(),
                          questionId: widget.questionId,
                          answerId: widget.id,
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(thickness: 1);
                      },
                    ),
                  ],
                ),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(child: Text('Error: $error')),
            ),
          ],
        ),
      ),
    );
  }
}
