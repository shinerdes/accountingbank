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
    final routes = ['/subject', '/answer', '/setting'];
    final currentRoute = GoRouterState.of(context).uri.toString();

    if (!currentRoute.contains(routes[index])) {
      context.go(routes[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.lightBlue.shade300,
      unselectedItemColor: Colors.white,
      currentIndex: widget.currentIndex,
      onTap: (int idx) => _onItemTapped(idx, context),
      items: _buildBottomNavigationBarItems(),
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavigationBarItems() {
    return [
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
        label: "오답노트",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          widget.currentIndex == 2 ? Icons.person : Icons.person_2_outlined,
        ),
        label: "마이페이지",
      ),
    ];
  }
}
