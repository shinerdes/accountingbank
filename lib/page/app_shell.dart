import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatefulWidget {
  const AppShell({
    super.key,
    required this.child,
    required this.currentIndex,
  });

  final Widget child;
  final int currentIndex;

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  void _onItemTapped(int index, BuildContext context) {
    if (index == 0) {
      if (GoRouterState.of(context).uri.toString().contains('subject') ==
              false &&
          GoRouterState.of(context).uri.toString().contains('year') == false &&
          GoRouterState.of(context).uri.toString().contains('round') == false &&
          GoRouterState.of(context).uri.toString().contains('exam') == false) {
        GoRouter.of(context).go("/subject");
      }
    } else if (index == 1) {
      if (GoRouterState.of(context).uri.toString().contains('answer') ==
          false) {
        GoRouter.of(context).go("/answer");
      }
    } else if (index == 2) {
      if (GoRouterState.of(context).uri.toString().contains('setting') ==
          false) {
        GoRouter.of(context).go("/setting");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue.shade300,
        unselectedItemColor: Colors.white,
        currentIndex: widget.currentIndex,
        onTap: (int idx) => _onItemTapped(idx, context),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              widget.currentIndex == 0
                  ? Icons.book_outlined
                  : Icons.book_online_outlined,
            ),
            label: "문제",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                widget.currentIndex == 1 ? Icons.report : Icons.report_outlined,
              ),
              label: "오답노트"),
          BottomNavigationBarItem(
              icon: Icon(
                widget.currentIndex == 2
                    ? Icons.person
                    : Icons.person_2_outlined,
              ),
              label: "마이페이지"),
        ],
      ),
    );
  }
}
