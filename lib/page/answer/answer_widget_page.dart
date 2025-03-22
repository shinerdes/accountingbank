import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class AnswerWidgetPage extends StatelessWidget {
  AnswerWidgetPage({
    super.key,
    required this.subject,
    required this.yearRound,
    required this.page,
    required this.id,
  });

  String subject;
  String yearRound;
  String page;
  int id;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('$id');
        context.push("/answercontent/$id/$subject $yearRound 기출문제 $page");
      },
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.blue, spreadRadius: 1.0),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.subject_outlined),
                const SizedBox(width: 5),
                Text(
                  subject,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.date_range_outlined),
                const SizedBox(width: 5),
                Text(
                  yearRound,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.numbers_outlined),
                const SizedBox(width: 5),
                Text(
                  '기출문제 $page',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
