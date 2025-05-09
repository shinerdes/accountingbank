import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:accountingbank/provider/all_problem_provider.dart';
import 'package:accountingbank/provider/favorite_list_provider.dart';
import 'package:accountingbank/provider/int_list_provider.dart';
import 'package:accountingbank/provider/pagenation_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as html;
import 'package:flutter_html/flutter_html.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProblemExamPage extends ConsumerStatefulWidget {
  final String examId;
  final String roundId;
  final String year;
  final String naming;
  final String pageNumber;

  const ProblemExamPage(
      {super.key,
      required this.examId,
      required this.roundId,
      required this.year,
      required this.naming,
      required this.pageNumber});

  @override
  _ProblemExamPageState createState() => _ProblemExamPageState();
}

final pageCounterProvider = StateProvider<int>((ref) => 0);

enum Number { one, two, three, four, five }

List circleNumberList = ['①', '②', '③', '④', '⑤'];

class _ProblemExamPageState extends ConsumerState<ProblemExamPage> {
  bool value = true;
  late int page;

  @override
  void initState() {
    super.initState();
    page = int.parse(widget.pageNumber);
  }

  int correntNumber = 0; // 정답번호
  Number? _number;

  final dio = Dio()..interceptors.add(LogInterceptor());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final exam = ref.watch(allProblemProvider(int.parse(widget.examId)));
    final favorite = ref.watch(favoriteListProvider);
    int totalpage = exam.value?.length ?? 0;

    // Scaffold 시작
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: appBarBackground,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // 왼쪽 화살표 아이콘
          onPressed: () {
            String original = widget.naming;
            String result =
                original.replaceAll(RegExp(r' 제 \d+회'), ""); // " 제 숫자회" 패턴 제거

            // 이전 페이지로 이동
            context.go('/round/${widget.roundId}/${widget.year}/$result');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home, color: Colors.black),
            onPressed: () {
              GoRouter.of(context).go('/subject'); // 홈으로 이동
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
              child: exam.when(
                data: (post) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)),
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
                      LinearPercentIndicator(
                        padding: EdgeInsets.zero,
                        percent: (page + 1) / (post.length),
                        lineHeight: 8,
                        backgroundColor: Colors.lightBlueAccent,
                        progressColor: Colors.orange,
                        width: MediaQuery.of(context).size.width - 16,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                          color: Colors.lightBlue,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              ' ${page + 1} / ${post.length}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {
                                if (favorite.any(
                                    (map) => map.containsKey(post[page].id))) {
                                  ref
                                      .read(favoriteListProvider.notifier)
                                      .removeItem(post[page].id);
                                } else {
                                  ref
                                      .read(favoriteListProvider.notifier)
                                      .addItem(post[page].id,
                                          '${widget.naming} ${page + 1}번');
                                }
                              },
                              child: (favorite.any(
                                      (map) => map.containsKey(post[page].id)))
                                  ? const Icon(
                                      Icons.star,
                                      size: 30,
                                      color: Colors.orange,
                                    )
                                  : const Icon(
                                      Icons.star,
                                      size: 30,
                                      color: Colors.white,
                                    ),
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
                                  post[page].content,
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
                                  onErrorBuilder: (context, element, error) {
                                    return Text('Failed to load image: $error');
                                  },
                                ),
                                Gap(20),
                                for (int i = 0;
                                    i < post[page].choices.length;
                                    i++) ...[
                                  Text(
                                      '${circleNumberList[i]} ${post[page].choices[i].content}'),
                                  const SizedBox(height: 8.0),
                                ],
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              flex: 1,
                              child: TextButton(
                                onPressed: () {
                                  for (int i = 0;
                                      i < post[page].choices.length;
                                      i++) {
                                    if (post[page].choices[i].isAnswer) {
                                      correntNumber = i + 1;
                                    }
                                  }

                                  //name/:roundid/:year
                                  // 정답 번호 / 정답 내용 / 문제 id / 문제 이름 / 회차 id / 년도
                                  // '/problemcommentary/:correntNumber/:correntString/:id/:examid/:name/:roundid/:year',
                                  context.go(
                                      "/problemcommentary/${correntNumber.toString()}/${post[page].choices[correntNumber - 1].content}/${post[page].id}/${widget.examId}/${widget.naming}/${widget.roundId}/${widget.year}/${page.toString()}");
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
                            Flexible(
                              flex: 1,
                              child: TextButton(
                                onPressed: () {
                                  ref.invalidate(
                                      paginatedPostProvider(post[page].id));

                                  // '/problemquestion/:questionId/:examId/:roundId/:year/:naming/:pageNumber',
                                  context.go(
                                      '/problemquestion/${post[page].id}/${widget.examId}/${widget.roundId}/${widget.year}/${widget.naming}/${page.toString()}');
                                  Future.microtask(() => ref
                                      .read(paginatedPostProvider(post[page].id)
                                          .notifier)
                                      .refreshData());
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
                            Flexible(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (_number != null)
                                    post[page]
                                            .choices[(enumToInt(_number!) - 1)]
                                            .isAnswer
                                        ? const Row(
                                            children: [
                                              Icon(Icons.circle_outlined,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                  size: 32.0),
                                              Gap(5),
                                              Text(
                                                '정답입니다',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Gap(5),
                                              Icon(Icons.circle_outlined,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                  size: 32.0),
                                            ],
                                          )
                                        : const Row(
                                            children: [
                                              Icon(
                                                Icons.close,
                                                color: Colors.red,
                                                size: 32,
                                              ),
                                              Gap(5),
                                              Text(
                                                '오답입니다',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Gap(5),
                                              Icon(
                                                Icons.close,
                                                color: Colors.red,
                                                size: 32,
                                              ),
                                            ],
                                          ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 3),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 20,
                              child: Radio<Number>(
                                activeColor: Colors.blue,
                                value: Number.one,
                                groupValue: _number,
                                onChanged: (value) {
                                  setState(() {
                                    _number = value!;
                                  });
                                },
                              ),
                            ),
                            const Text('1'),
                            SizedBox(
                              width: 20,
                              child: Radio<Number>(
                                activeColor: Colors.blue,
                                value: Number.two,
                                groupValue: _number,
                                onChanged: (value) {
                                  setState(() {
                                    _number = value!;
                                  });
                                },
                              ),
                            ),
                            const Text('2'),
                            SizedBox(
                              width: 20,
                              child: Radio<Number>(
                                activeColor: Colors.blue,
                                value: Number.three,
                                groupValue: _number,
                                onChanged: (value) {
                                  setState(() {
                                    _number = value!;
                                  });
                                },
                              ),
                            ),
                            const Text('3'),
                            SizedBox(
                              width: 20,
                              child: Radio<Number>(
                                activeColor: Colors.blue,
                                value: Number.four,
                                groupValue: _number,
                                onChanged: (value) {
                                  setState(() {
                                    _number = value!;
                                  });
                                },
                              ),
                            ),
                            const Text('4'),
                            SizedBox(
                              width: 20,
                              child: Radio<Number>(
                                activeColor: Colors.blue,
                                value: Number.five,
                                groupValue: _number,
                                onChanged: (value) {
                                  setState(() {
                                    _number = value!;
                                  });
                                },
                              ),
                            ),
                            const Text('5'),
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 1,
              child: const ColoredBox(color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    correntNumber = 0;
                    if (page != 0) {
                      setState(() {
                        page = 0;
                      });
                    } else {
                      _showAlertDialog('첫 페이지 입니다.');
                    }
                  },
                  icon: const Icon(Icons.keyboard_double_arrow_left),
                ),
                IconButton(
                  onPressed: () {
                    correntNumber = 0;
                    if (page != 0) {
                      setState(() {
                        page = page - 1;
                        _number = null;
                      });
                    } else {
                      _showAlertDialog('첫 페이지 입니다.');
                    }
                  },
                  icon: const Icon(Icons.keyboard_arrow_left),
                ),
                IconButton(
                  onPressed: () {
                    correntNumber = 0;
                    if (page < (totalpage - 1)) {
                      setState(() {
                        page = page + 1;
                        _number = null;
                      });
                    } else {
                      _showAlertDialog('마지막 페이지 입니다.');
                    }
                  },
                  icon: const Icon(Icons.keyboard_arrow_right),
                ),
                IconButton(
                  onPressed: () {
                    correntNumber = 0;
                    if (page < (totalpage - 1)) {
                      setState(() {
                        page = totalpage - 1;
                      });
                    } else {
                      _showAlertDialog('마지막 페이지 입니다.');
                    }
                  },
                  icon: const Icon(Icons.keyboard_double_arrow_right),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog(String msg) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Colors.blue, width: 2), // Custom border color
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
          title: const Text(
            '알림',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          content: SizedBox(
            height: 55,
            child: Text(msg,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 15)),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(color: Colors.blue, width: 2.0),
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
        );
      },
    );
  }
}

enumToInt(Number nums) {
  if (nums == Number.one) {
    return 1;
  } else if (nums == Number.two) {
    return 2;
  } else if (nums == Number.three) {
    return 3;
  } else if (nums == Number.four) {
    return 4;
  } else if (nums == Number.five) {
    return 5;
  }
}
