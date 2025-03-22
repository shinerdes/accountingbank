import 'package:accountingbank/page/answer/answer_widget_page.dart';
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
  // ignore: library_private_types_in_public_api
  _AnswerMainPageState createState() => _AnswerMainPageState();
}

// enum Number { one, two, three, four, five }

class _AnswerMainPageState extends ConsumerState<AnswerMainPage> {
  //late Future<AllProblem> _futureData;
  bool value = true;

  // final Number _number = Number.one;

  // int? num = 0;
  // int totalpage = 0;
  // int page = 0;

  final dio = Dio()
    ..interceptors.add(
      LogInterceptor(),
    );

  @override
  Widget build(BuildContext context) {
    //final params = {'userId': userId, 'postType': postType};
    //final postsState = ref.watch(userPostsProvider(params));

    //final postsState = ref.watch(allProblemProvider(2));
    //final postsState = ref.watch(subjectYearExamProvider(params));
    // print(postsState);

    final favorite = ref.watch(favoriteListProvider);
    print(favorite);
    print(favorite.length);
    print(favorite);
    for (var map in favorite) {
      map.forEach((key, value) {
        print("Key: $key, Value: $value");
      });
    }

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
            // ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: 5,
            //     itemBuilder: (BuildContext ctx, int idx) {
            //       return const AnswerWidgetPage();
            //     }),

            Expanded(
              child: GridView.count(
                mainAxisSpacing: 8.0, //  간격 조절
                crossAxisSpacing: 8.0, //  간격 조절
                childAspectRatio: 2,
                crossAxisCount: 2,
                children: List.generate(favorite.length, (index) {
                  var noParentheses = favorite[index]
                      .values
                      .toString()
                      .replaceAll(RegExp('[^a-zA-Z0-9가-힣\\s]'), '');

                  var split = noParentheses.split(' ');
                  return Center(
                      child: AnswerWidgetPage(
                    subject: split[0],
                    yearRound: '${split[1]} ${split[2]}',
                    page: split[3],
                    id: favorite[index].keys.single,
                  ));
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
        //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            title: const Column(
              children: <Widget>[
                Text("Dialog Title"),
              ],
            ),
            //
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  msg,
                ),
              ],
            ),
            actions: <Widget>[
              ElevatedButton(
                child: const Text("확인"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
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



/*
 //final client = RestClient(dio);

    final all = SubClient(dio);
    final problem = ProblemClient(dio);

    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: problem.getAllProblem(id: 2),
          builder: (context, snapshot) {
            print(snapshot.hasData);

            if (snapshot.hasData) {
              AllProblem? allinfo = snapshot.data;

              if (allinfo != null) {
                //var count = allinfo.data.l;

                return Column(
                  children: <Widget>[
                    Text(
                      allinfo.data[0].content,
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      allinfo.data[0].explanation!,
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      '${allinfo.data[0].id}',
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      '${allinfo.data[0].number}',
                      style: const TextStyle(fontSize: 24.0),
                    ),

                    // Text(
                    //   allinfo.data.choices[1].content,
                    //   style: const TextStyle(fontSize: 24.0),
                    // ),
                    // Text(
                    //   '${allinfo.data.choices[1].isAnswer}',
                    //   style: const TextStyle(fontSize: 24.0),
                    // ),
                    // for (var i = 0; i < count; i++)ㄴ
                    //   Text(
                    //     allinfo.data[i].content,
                    //     style: const TextStyle(fontSize: 24.0),
                    //   ),
                    // for (var i = 0; i < count; i++)
                    //   Text(
                    //     '${allinfo.data[i].number}',
                    //     style: const TextStyle(fontSize: 24.0),
                    //   ),
                    // for (var i = 0; i < count; i++)
                    //   Text(
                    //     allinfo.data[i].explanation,
                    //     style: const TextStyle(fontSize: 24.0),
                    //   ),
                  ],
                );
              } else {
                return const Center(
                  child: Text('데이터 없음'),
                );
              }
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
*/



/*
 return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: all.getOneExam(id: 3),
          builder: (context, snapshot) {
            print(snapshot.hasData);
            if (snapshot.hasData) {
              Oneexam? allinfo = snapshot.data;

              if (allinfo != null) {
                //var count = allinfo.data.l;

                return Column(
                  children: <Widget>[
                    Text(
                      allinfo.data.name,
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    // Text(
                    //   allinfo.data.choices[1].content,
                    //   style: const TextStyle(fontSize: 24.0),
                    // ),
                    // Text(
                    //   '${allinfo.data.choices[1].isAnswer}',
                    //   style: const TextStyle(fontSize: 24.0),
                    // ),
                    // for (var i = 0; i < count; i++)ㄴ
                    //   Text(
                    //     allinfo.data[i].content,
                    //     style: const TextStyle(fontSize: 24.0),
                    //   ),
                    // for (var i = 0; i < count; i++)
                    //   Text(
                    //     '${allinfo.data[i].number}',
                    //     style: const TextStyle(fontSize: 24.0),
                    //   ),
                    // for (var i = 0; i < count; i++)
                    //   Text(
                    //     allinfo.data[i].explanation,
                    //     style: const TextStyle(fontSize: 24.0),
                    //   ),
                  ],
                );
              } else {
                return const Center(
                  child: Text('데이터 없음'),
                );
              }
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
*/

/*
 return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: sub.getOneProblem(id: 1),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              OneProblem? allinfo = snapshot.data;

              if (allinfo != null) {
                //var count = allinfo.data.l;

                return Column(
                  children: <Widget>[
                    Text(
                      allinfo.data.content,
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      allinfo.data.choices[0].content,
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    // for (var i = 0; i < count; i++)
                    //   Text(
                    //     allinfo.data[i].content,
                    //     style: const TextStyle(fontSize: 24.0),
                    //   ),
                    // for (var i = 0; i < count; i++)
                    //   Text(
                    //     '${allinfo.data[i].number}',
                    //     style: const TextStyle(fontSize: 24.0),
                    //   ),
                    // for (var i = 0; i < count; i++)
                    //   Text(
                    //     allinfo.data[i].explanation,
                    //     style: const TextStyle(fontSize: 24.0),
                    //   ),
                  ],
                );
              } else {
                return const Center(
                  child: Text('데이터 없음'),
                );
              }
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

*/

/*
return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: sub.getOneSubject(id: 1),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Onesubject? subinfo = snapshot.data;
              if (subinfo != null) {
                OnesubjectData userData = subinfo.data;
                return Column(
                  children: [
                    Text(
                      userData.name,
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      '${userData.id}',
                      style: const TextStyle(fontSize: 24.0),
                    ),
                  ],
                );
              }
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

*/


/*
return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                );
              },
              scrollDirection: Axis.vertical,
              reverse: false,
              padding: const EdgeInsets.all(8.0),
              primary: true,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              addAutomaticKeepAlives: true,
              addRepaintBoundaries: true,
              addSemanticIndexes: true,
            ),
          ],
        ),
      ),
    );
*/