import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProblemRoundWidget extends ConsumerWidget {
  const ProblemRoundWidget({
    super.key,
    required this.id,
    required this.roundid,
    required this.year,
    required this.round,
    required this.name,
  });

  final String id;
  final String roundid;
  final String year;
  final String round;
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => context.go("/exam/$id/$roundid/$year/$name/0"),
      child: Container(
        height: 75,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.blue, spreadRadius: 1.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(CupertinoIcons.pencil, size: 30),
              const Gap(10),
              Text(
                round,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
