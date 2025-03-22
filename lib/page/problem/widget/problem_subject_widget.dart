import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class ProblemSubjectWidget extends ConsumerWidget {
  ProblemSubjectWidget({super.key, required this.name, required this.id});

  String name;
  String id;
//context.push("/year/${post.data[index].id.toString()}/${post.data[index].name}");
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        context.push("/year/$id/$name");
      },
      child: Container(
        height: 75,
        margin: const EdgeInsets.only(
          bottom: 8,
          left: 8,
          right: 8,
          top: 8,
        ),
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
              const Icon(
                CupertinoIcons.book,
                size: 30,
              ),
              const Gap(10),
              Text(name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
