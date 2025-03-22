import 'package:accountingbank/timeago.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProblemQuestionWidfget extends ConsumerWidget {
  ProblemQuestionWidfget(
      {super.key,
      required this.id,
      required this.title,
      required this.username,
      required this.answerCount,
      required this.answeredByAdmin,
      required this.createdAt,
      required this.questionId});

  String id;
  String title;
  String username;
  bool answeredByAdmin;
  String createdAt;
  int answerCount;
  String questionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        context.push('/problemanswer/$id/$questionId');
        // context.push("/year/$id/$name");
      },
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 8,
          left: 8,
          right: 8,
          top: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.blue, spreadRadius: 1.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxWidth: 250), // Custom width
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),

                  const SizedBox(width: 8), // Spacing

                  if (answeredByAdmin == true)
                    // const Icon(Icons.check_box_outlined, color),

                    // const Stack(
                    //   alignment: Alignment.center,
                    //   children: [
                    //     Icon(Icons.check_box,
                    //         color: Colors.amber), // Filled background
                    //     Icon(Icons.check_box_outlined,
                    //         color: Colors.black), // Outline
                    //   ],
                    // ),
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
                      Text(
                        username,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const Gap(10),
                  Text(
                      convertToAgo(DateTime.parse(createdAt)
                          .add(const Duration(hours: 9))),
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(Icons.chat_bubble_outline_rounded),
                  // const Stack(
                  //   alignment: Alignment.center,
                  //   children: [
                  //     Icon(Icons.chat_bubble_rounded,
                  //         color: Colors.orange), // Filled background
                  //     Icon(Icons.chat_bubble_outline_rounded,
                  //         color: Colors.black), // Outline
                  //   ],
                  // ),
                  const Gap(5),
                  Text('$answerCount'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 이름
// 질문 // 몇시간 전
