//* answer_main *//


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

//* problem_exam *//


/*
child: FutureBuilder(
                future: _fetchData(),
                //future: problem.getAllProblem(id: int.parse(widget.id)),
                builder: (context, AsyncSnapshot snapshot) {
                  // Check the connection state
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  if (!snapshot.hasData) {
                    // init() 실행 후, 아직 데이터가 없을 때 (= 로딩 중)
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasData) {
                    final posts = snapshot.data!;
                    totalpage = posts.data.length;

                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: screen.width * 0.4975,
                              color: AppColors.primary,
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text("2024년 기출문제")),
                            ),
                            Container(
                                width: screen.width * 0.4975,
                                color: AppColors.primary,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(' ${page + 1} / $totalpage')))
                          ],
                        ),
                        const SizedBox(height: 1.0),
                        Container(
                          color: AppColors.primary,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2024년 기출문제 31번",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
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
                                  Text(posts.data[page].content),

                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                      '① ${posts.data[page].choices[0].content}'),
                                  // const Text(
                                  //      "① 기업이 재무상태표에 유동자산과 비유동자산, 그리고 유동부채와 비유동부채로 구분하여 표시하는 경우, 이연법인세자산은 유동자산으로 분류한다."),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                      '② ${posts.data[page].choices[1].content}'),
                                  // const Text(
                                  //     "② 한국채택국제회계기준을 준수하여 작성된 재무제표는 국제회계기준을 준수하여 작성된 재무제표임을 주석으로 공시할 수 있다"),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                      '③ ${posts.data[page].choices[2].content}'),
                                  // const Text(
                                  //     "③ 환경 요인이 유의적인 산업에 속해 있는 경우나 종업원이 재무제표이용자인 경우 재무제표 이외에 환경보고서나 부가가치보고서도 한국채택국제회계기준을 적용하여 작성한다."),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                      '④ ${posts.data[page].choices[3].content}'),
                                  // const Text(
                                  //     "④ 부적절한 회계정책은 이에 대하여 공시나 주석 또는 보충자료를 통해 설명하여 정당화 될 수 있다."),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                      '⑤ ${posts.data[page].choices[4].content}'),
                                  // const Text(
                                  //     "⑤ 당기손익과 기타포괄손익은 별개의 손익계산서가 아닌 단일의 포괄손익계산서로 작성되어야 한다."),
                                  const SizedBox(
                                    height: 8.0,
                                  ),

                                  if (posts.data[page].explanation != null)
                                    Image.network(
                                      posts.data[page].explanation!,
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.width,
                                    ),

                                  // Image.asset('assets/image/qqqq.png',
                                  //     width: MediaQuery.of(context).size.width,
                                  //     height: MediaQuery.of(context).size.height,
                                  //     fit: BoxFit.fill),
                                ],
                              ),
                            ),
                          ),
                        ),
                        RowButton(screen: screen),
                        const SizedBox(
                          height: 3,
                        ),
                      ],
                    );
                  } else {
                    return const Center(child: Text('No data found'));
                  }
                },
              ),
*/




/*
Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screen.width * 0.4975,
                    color: AppColors.primary,
                    child: TextButton(
                        onPressed: () {
                          _showYearsDialog(context);
                        },
                        child: const Text("2024년 기출문제")),
                  ),
                  Container(
                      width: screen.width * 0.4975,
                      color: AppColors.primary,
                      child: TextButton(
                          onPressed: () {
                            _showNumberDialog(context);
                          },
                          child: const Text("(1/40)")))
                ],
              ),
              const SizedBox(height: 1.0),
              Container(
                color: AppColors.primary,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("2024년 기출문제 31번", textAlign: TextAlign.center),
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
                        const Text("42. 재무제표 표시에 관한 설명으로 옳은 것은?"),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                            "① 기업이 재무상태표에 유동자산과 비유동자산, 그리고 유동부채와 비유동부채로 구분하여 표시하는 경우, 이연법인세자산은 유동자산으로 분류한다."),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                            "② 한국채택국제회계기준을 준수하여 작성된 재무제표는 국제회계기준을 준수하여 작성된 재무제표임을 주석으로 공시할 수 있다"),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                            "③ 환경 요인이 유의적인 산업에 속해 있는 경우나 종업원이 재무제표이용자인 경우 재무제표 이외에 환경보고서나 부가가치보고서도 한국채택국제회계기준을 적용하여 작성한다."),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                            "④ 부적절한 회계정책은 이에 대하여 공시나 주석 또는 보충자료를 통해 설명하여 정당화 될 수 있다."),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                            "⑤ 당기손익과 기타포괄손익은 별개의 손익계산서가 아닌 단일의 포괄손익계산서로 작성되어야 한다."),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Image.asset('assets/image/qqqq.png',
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            fit: BoxFit.fill),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: screen.width * 0.24,
                      color: AppColors.primary,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("문제"),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: screen.width * 0.24,
                      color: AppColors.primary,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("해설"),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: screen.width * 0.24,
                      color: AppColors.primary,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("질문"),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: screen.width * 0.24,
                      color: AppColors.primary,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("기타"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: num,
                            onChanged: (index) {
                              setState(() {
                                num = index;
                              });
                            }),
                        const Text('1')
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: num,
                            onChanged: (index) {
                              setState(() {
                                num = index;
                              });
                            }),
                        const Text('2')
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio(
                            value: 3,
                            groupValue: num,
                            onChanged: (index) {
                              setState(() {
                                num = index;
                              });
                            }),
                        const Text('3')
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio(
                            value: 4,
                            groupValue: num,
                            onChanged: (index) {
                              setState(() {
                                num = index;
                              });
                            }),
                        const Text('4')
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio(
                            value: 5,
                            groupValue: num,
                            onChanged: (index) {
                              setState(() {
                                num = index;
                              });
                            }),
                        const Text('5')
                      ],
                    ),
                  ),
                ],
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
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_double_arrow_left),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_left),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_double_arrow_right),
                  ),
                ],
              )
            ],
          ),
*/


/*
Column(
        children: [
          FutureBuilder(
            future: problem.getAllProblem(id: int.parse(widget.id)),
            builder: (context, snapshot) {
              // Check the connection state
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.hasData) {
                // Display the data in a ListView
                final posts = snapshot.data!;
                return Column(
                  children: [
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                page = page - 1;
                              });
                              print(page);
                              print('page');
                            },
                            child: const Text('<<<<<<')),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                page = page + 1;
                              });
                              print(page);
                              print('page');
                            },
                            child: const Text('>>>>>>')),
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        final post = posts.data;
                        return Column(
                          children: [
                            Text(post[page].choices[index].content),
                          ],
                        );
                      },
                    ),
                  ],
                );
              } else {
                return const Center(child: Text('No data found'));
              }
            },
          ),
        ],
      ),
*/

/* problem_subject */


/*
 TextButton(
                onPressed: () {
                  context.push("/year:$studentIdList");
                },
                child: const Text("asdasd")),
*/



/*
body: FutureBuilder(
          future: problem.getAllSubject(),
          builder: (context, snapshot) {
            // Check the connection state
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              // Display the data in a ListView
              final posts = snapshot.data!;
              return ListView.builder(
                itemCount: posts.data.length,
                itemBuilder: (context, index) {
                  final post = posts.data;
                  return ListTile(
                    title: Text('${post[index].id}'),
                    subtitle: Text(post[index].name),
                    onTap: () {
                      context.push("/year/${post[index].id.toString()}");
                      print('/year:${post[index].id.toString()}');
                    },
                  );
                },
              );
            } else {
              return const Center(child: Text('No data found'));
            }
          },
        ),
*/


/* setting_main */


/*
{id: 1, 
content: <p><strong>민법의 법원에 관한 설명으로 옳은 것은?</strong></p><p><br></p>, 
number: 1, 
explanation: https://jbaccount.s3.ap-northeast-2.amazonaws.com/post/d4129468-6f3c-4aed-8c65-23430ec8034aimage/png, 
choices: [{id: 1, number: 1, content: 민법 제1조에서 민법의 법원으로 규정한 '만사에 관한 법률'은 민법전만을 의미한다, isAnswer: false}, {id: 2, number: 2, content: 민법 제1조에서 민법의 법원으로 규정한 '관습법'에는 사실인 관습이 포함된다., isAnswer: false}, {id: 3, number: 3, content: 대법원이 정한 공탁규칙은 민법의 법원이 될 수 있다., isAnswer: false}, {id: 4, number: 4, content: 헌법에 의하여 체결*공표된 국제조약은 그것이 민사에 관한 것이더라도 민법의 법원이 될 수 없다., isAnswer: true}, {id: 5, number: 5, content: 미등기무허가 건물의 양수인에게는 소유권에 준하는 관습법상의 물권이 인정되지 않는다<…>

*/


/*


 Center(
        child: FutureBuilder<User?>(
          future: client.getUser(id: 2),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              User? userInfo = snapshot.data;
              if (userInfo != null) {
                Data userData = userInfo.data;
                print(userData.avatar);
                print(userData.email);
                print(userData.firstName);
                print(userData.lastName);
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(userData.avatar),
                    const SizedBox(height: 16.0),
                    Text(
                      '${userInfo.data.firstName} ${userInfo.data.lastName}',
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      userData.email,
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
*/