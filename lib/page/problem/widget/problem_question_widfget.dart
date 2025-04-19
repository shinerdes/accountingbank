import 'package:accountingbank/timeago.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProblemQuestionWidfget extends ConsumerWidget {
  ProblemQuestionWidfget({
    super.key,
    required this.id,
    required this.title,
    required this.username,
    required this.answerCount,
    required this.answeredByAdmin,
    required this.createdAt,
    required this.questionId,
    required this.examid,
    required this.naming,
    required this.roundId,
    required this.year,
    required this.pageNumber,
  });

  String id;
  String title;
  String username;
  bool answeredByAdmin;
  String createdAt;
  int answerCount;
  String questionId;
  String examid;
  String naming;
  String roundId;
  String year;
  String pageNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        context.go(
            '/problemanswer/$id/$questionId/$examid/$roundId/$year/$naming/$pageNumber');
      },
      child: Container(
        margin: const EdgeInsets.all(8),
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
                    constraints: const BoxConstraints(maxWidth: 250),
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
                  const SizedBox(width: 8),
                  if (answeredByAdmin)
                    const Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(Icons.lightbulb, color: Colors.orange),
                        Icon(Icons.lightbulb_outlined, color: Colors.black),
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
                      const Icon(CupertinoIcons.person_alt, size: 20),
                      const Gap(5),
                      Text(
                        username,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const Gap(10),
                  Text(
                    convertToAgo(DateTime.parse(createdAt)
                        .add(const Duration(hours: 9))),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(Icons.chat_bubble_outline_rounded),
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
