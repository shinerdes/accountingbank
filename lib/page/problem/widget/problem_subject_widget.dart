import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProblemSubjectWidget extends ConsumerWidget {
  const ProblemSubjectWidget({
    super.key,
    required this.name,
    required this.id,
  });

  final String name;
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => _navigateToYear(context),
      child: Container(
        height: 75,
        margin: const EdgeInsets.all(8),
        decoration: _containerDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(CupertinoIcons.book, size: 30),
              const Gap(10),
              _buildNameText(),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToYear(BuildContext context) {
    final route = "/year/$id/$name";
    context.go(route);
    print(route);
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: const [
        BoxShadow(color: Colors.blue, spreadRadius: 1.0),
      ],
    );
  }

  Widget _buildNameText() {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
