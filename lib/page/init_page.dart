import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLogo(),
        const Gap(150),
        _buildStartButton(context),
      ],
    );
  }

  Widget _buildLogo() {
    return Image.asset(
      'assets/image/ysbizacademy.png',
      width: 250,
      height: 250,
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: Colors.lightBlue, width: 1),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        context.go("/subject");
      },
      child: const Text(
        "시작하기",
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    );
  }
}
