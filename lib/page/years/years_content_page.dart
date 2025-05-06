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
                  _buildButton(screen, "2024년 기출문제",
                      () => _showDialog(context, "2024년 기출문제", 10)),
                  _buildButton(screen, "(1/40)",
                      () => _showDialog(context, "2024 기출문제", 10)),
                ],
              ),
              const SizedBox(height: 1.0),
              Container(
                color: AppColors.primary,
                child: const Center(
                  child: Text("2024년 기출문제 31번", textAlign: TextAlign.center),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/image/qqqq.png',
                      width: screen.width,
                      height: screen.height,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              _buildActionButtons(screen),
              const SizedBox(height: 3),
              _buildRadioButtons(),
              const Divider(color: Colors.black, height: 1),
              _buildNavigationButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(Size screen, String text, VoidCallback onPressed) {
    return Container(
      width: screen.width * 0.4975,
      color: AppColors.primary,
      child: TextButton(onPressed: onPressed, child: Text(text)),
    );
  }

  Widget _buildActionButtons(Size screen) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildFlexibleButton(screen, "문제", () {}),
        _buildFlexibleButton(screen, "해설", () {}),
        _buildFlexibleButton(screen, "질문", () {}),
        _buildFlexibleButton(screen, "기타", () {}),
      ],
    );
  }

  Widget _buildFlexibleButton(
      Size screen, String text, VoidCallback onPressed) {
    return Flexible(
      flex: 1,
      child: Container(
        width: screen.width * 0.24,
        color: AppColors.primary,
        child: TextButton(onPressed: onPressed, child: Text(text)),
      ),
    );
  }

  Widget _buildRadioButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Flexible(
          flex: 1,
          child: Row(
            children: [
              Radio(
                value: index + 1,
                groupValue: num,
                onChanged: (value) {
                  setState(() {
                    num = value;
                  });
                },
              ),
              Text('${index + 1}')
            ],
          ),
        );
      }),
    );
  }

  Widget _buildNavigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_double_arrow_left)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_left)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_double_arrow_right)),
      ],
    );
  }

  void _showDialog(BuildContext context, String titlePrefix, int itemCount) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.symmetric(horizontal: 25),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          content: SizedBox(
            height: 500,
            width: 300,
            child: ListView.builder(
              itemCount: itemCount,
              itemBuilder: (context, index) {
                return ListTile(title: Text("$titlePrefix ${index + 1}"));
              },
              padding: const EdgeInsets.all(8.0),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
            ),
          ),
          actions: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.20,
                child: ElevatedButton(
                  child: const Text('OK',
                      style: TextStyle(color: AppColors.primary)),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
