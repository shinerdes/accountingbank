import 'package:accountingbank/router.dart';
import 'package:accountingbank/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SharedPreferences prefs = await SharedPreferences.getInstance();
  setPathUrlStrategy();
  runApp(ProviderScope(child: MyApp()));
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    //     useMaterial3: true,
    //   ),
    //   home: const ChapterMainPage(),
    // );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "quiz",
      routerConfig: router,

      theme: bankDefaultTheme,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      // themeAnimationStyle: AnimationStyle(
      //   curve: Curves.easeInCirc,
      //   duration: const Duration(milliseconds: 350),
      // ),
    );
  }
}

// 로그인 
// => 단원별 / 연도별 / 오답노트 / 기타 
// chapter years
