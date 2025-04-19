import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class YearsMainPage extends StatefulWidget {
  const YearsMainPage({super.key});

  @override
  State<YearsMainPage> createState() => _YearsMainPageState();
}

class _YearsMainPageState extends State<YearsMainPage> {
  final List<String> item = [
    "1.2024년",
    "2.2023년",
    "3.2022년",
    "4.2021년",
    "5.2020년"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListView.builder(
              itemCount: item.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(item[index]),
                  onTap: () {
                    context.push("/years/yearscontent");
                  },
                );
              },
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(8.0),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
