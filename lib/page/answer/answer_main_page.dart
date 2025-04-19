import 'package:accountingbank/page/answer/widget/answer_main_widget.dart';
import 'package:accountingbank/provider/all_problem_provider.dart';
import 'package:accountingbank/provider/favorite_list_provider.dart';
import 'package:accountingbank/provider/one_problem_provider.dart';
import 'package:accountingbank/provider/one_subject_provider.dart';
import 'package:accountingbank/provider/subject_year_exam_provider.dart';
import 'package:accountingbank/theme.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AnswerMainPage extends ConsumerStatefulWidget {
  const AnswerMainPage({super.key});

  @override
  _AnswerMainPageState createState() => _AnswerMainPageState();
}

class _AnswerMainPageState extends ConsumerState<AnswerMainPage> {
  final dio = Dio()..interceptors.add(LogInterceptor());

  @override
  Widget build(BuildContext context) {
    final favorite = ref.watch(favoriteListProvider);

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: appBarBackground,
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 2,
                crossAxisCount: 2,
                children: List.generate(favorite.length, (index) {
                  var noParentheses = favorite[index]
                      .values
                      .toString()
                      .replaceAll(RegExp('[^a-zA-Z0-9가-힣\\s]'), '');
                  var split = noParentheses.split(' ');

                  return Center(
                    child: AnswerMainWidget(
                      subject: split[0],
                      yearRound: '${split[1]} ${split[2]}',
                      page: split[3],
                      id: favorite[index].keys.single,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void FlutterDialog(String msg) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          title: const Text("Dialog Title"),
          content: Text(msg),
          actions: [
            ElevatedButton(
              child: const Text("확인"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

class UserPostParams {
  final int id;
  final int year;

  UserPostParams(this.id, this.year);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserPostParams &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          year == other.year;

  @override
  int get hashCode => id.hashCode ^ year.hashCode;
}
