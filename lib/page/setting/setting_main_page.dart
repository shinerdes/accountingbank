import 'package:accountingbank/page/setting/setting_main_widget.dart';
import 'package:accountingbank/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingMainPage extends ConsumerStatefulWidget {
  const SettingMainPage({super.key});

  @override
  _SettingMainPageState createState() => _SettingMainPageState();
}

class _SettingMainPageState extends ConsumerState<SettingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        flexibleSpace: appBarBackground,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 세로 중앙 정렬
          crossAxisAlignment: CrossAxisAlignment.center, // 가로 중앙 정렬
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.alarm_outlined,
                  size: 30,
                ),
                Text('준비 중 입니다.'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
