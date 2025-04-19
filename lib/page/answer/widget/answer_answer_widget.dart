import 'package:accountingbank/page/problem/problem_fix_answer_page.dart';
import 'package:accountingbank/provider/all_answer_provider.dart';
import 'package:accountingbank/provider/all_question_provider.dart';
import 'package:accountingbank/provider/one_question_provider.dart';
import 'package:accountingbank/provider/pagenation_provider.dart';

import 'package:accountingbank/provider/remove_answer_delete_provider.dart';
import 'package:accountingbank/provider/verification_answer_password_provider.dart';
import 'package:accountingbank/timeago.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AnswerAnswerWidget extends ConsumerWidget {
  AnswerAnswerWidget({
    super.key,
    required this.username,
    required this.content,
    required this.createdAt,
    required this.id,
    required this.questionId,
    required this.answerId,
  });

  String username;
  String content;
  String createdAt;
  String id;
  String questionId;
  String answerId;

  TextEditingController removeAnswerTextController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime dateTime = DateTime.parse(createdAt);
    return Container(
      //color: Colors.blueAccent,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.blue, spreadRadius: 1.0),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    Text(
                      username,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Gap(5),
                    if (username == '운영자')
                      const Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(Icons.lightbulb,
                              color: Colors.orange), // Filled background
                          Icon(Icons.lightbulb_outlined,
                              color: Colors.black), // Outline
                        ],
                      ),
                  ],
                ),
                Text(convertToAgo(dateTime.add(const Duration(hours: 9)))),
              ],
            ),
            const Gap(10),
            Text(
              content,
              textAlign: TextAlign.start,
            ),
            const Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.push('/answerfixanswer/$id/$content/$answerId');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('수정'),
                ),
                const Gap(10),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.blue,
                                    width: 2), // Custom border color
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded corners
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
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(8),
                                ],
                                cursorColor: Colors.black,
                                controller: removeAnswerTextController,
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
                                            !_obscureText; // Toggle state
                                      });
                                    },
                                  ),
                                  fillColor: Colors.black,
                                  focusColor: Colors.black,
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.orange, width: 2.0),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                  ),
                                  disabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    removeAnswerTextController.text = '';
                                    _obscureText = true;
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
                                  child: const Text(
                                    '취소',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color: Colors.blue, width: 2.0),
                                    ),
                                    backgroundColor: Colors.lightBlue,
                                    foregroundColor: Colors.white,
                                  ),
                                  onPressed: () async {
                                    ref
                                        .read(verificationAnswerPwdNotifierProvider(
                                                AnswerParams(
                                                    id,
                                                    removeAnswerTextController
                                                        .text))
                                            .notifier)
                                        .fetchData()
                                        .then(
                                      (value) async {
                                        if (value == true) {
                                          await ref
                                              .read(removeAnswerNotifierProvider
                                                  .notifier)
                                              .deleteUser(int.parse(id));

                                          context.pop();

                                          ref.invalidate(oneQuestionProvider(
                                              int.parse(answerId)));

                                          ref.invalidate(allQuestionProvider(
                                              int.parse(questionId)));

                                          ref.invalidate(allAnswerProvider(
                                              int.parse(answerId)));

                                          ref
                                              .read(paginatedPostProvider(
                                                      int.parse(questionId))
                                                  .notifier)
                                              .refreshData();
                                        } else {
                                          showDialog(
                                              context: context,
                                              builder: (
                                                BuildContext context,
                                              ) =>
                                                  AlertDialog(
                                                    backgroundColor:
                                                        Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: const BorderSide(
                                                          color: Colors.blue,
                                                          width:
                                                              2), // Custom border color
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20), // Rounded corners
                                                    ),
                                                    title: const Text(
                                                      '실패',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                    content: const SizedBox(
                                                      height: 55,
                                                      child: Text('비밀번호가 다릅니다.',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 15)),
                                                    ),
                                                    actions: [
                                                      ElevatedButton(
                                                          style: ElevatedButton
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
                                                                  width: 2.0),
                                                            ),
                                                            backgroundColor:
                                                                Colors
                                                                    .lightBlue,
                                                            foregroundColor:
                                                                Colors.white,
                                                          ),
                                                          onPressed: () {
                                                            context.pop();
                                                          },
                                                          child:
                                                              const Text('확인')),
                                                    ],
                                                  ));
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
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('삭제'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
