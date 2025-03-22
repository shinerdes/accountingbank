import 'package:accountingbank/theme.dart';
import 'package:flutter/material.dart';

class YearsContentPage extends StatefulWidget {
  const YearsContentPage({super.key});

  @override
  State<YearsContentPage> createState() => _YearsContentPageState();
}

class _YearsContentPageState extends State<YearsContentPage> {
  bool value = true;

  int? num = 0;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: AppColors.white,
          child: Center(
            child: Column(
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
                      child: Image.asset('assets/image/qqqq.png',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          fit: BoxFit.fill),
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
          ),
        ));
  }
}

void _showYearsDialog(context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    //context: _scaffoldKey.currentContext,
    builder: (context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.only(left: 25, right: 25),
        // title: const Center(child: Text("Information")),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        content: SizedBox(
          height: 500,
          width: 300,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: [
                    ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("202$index년 기출문제"),
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
              ],
            ),
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.20,
                child: ElevatedButton(
                  child: const Text(
                    'OK',
                    style: TextStyle(color: AppColors.primary),
                  ),
                  onPressed: () {
                    //saveIssue();
                    Navigator.of(context).pop();
                  },
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
            ],
          )
        ],
      );
    },
  );
}

void _showNumberDialog(context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    //context: _scaffoldKey.currentContext,
    builder: (context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.only(left: 25, right: 25),
        // title: const Center(child: Text("Information")),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        content: SizedBox(
          height: 500,
          width: 300,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: [
                    ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("2024 기출문제 ${index + 1}"),
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
              ],
            ),
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.20,
                child: ElevatedButton(
                  child: const Text(
                    'OK',
                    style: TextStyle(color: AppColors.primary),
                  ),
                  onPressed: () {
                    //saveIssue();
                    Navigator.of(context).pop();
                  },
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
            ],
          )
        ],
      );
    },
  );
}
