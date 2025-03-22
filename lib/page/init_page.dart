import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            context.go("/subject");
          },
          child: const Text("로그인"),
        ),
      ),
    );
  }
}
