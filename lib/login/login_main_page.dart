import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginMainPage extends ConsumerStatefulWidget {
  const LoginMainPage({super.key});

  @override
  _LoginMainPageState createState() => _LoginMainPageState();
}

class _LoginMainPageState extends ConsumerState<LoginMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: const Center(
        child: Text('Login Main Page'),
      ),
    );
  }
}

/*

login

*/
