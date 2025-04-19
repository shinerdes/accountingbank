import 'package:accountingbank/page/app_shell.dart';
import 'package:accountingbank/page/init_page.dart';
import 'package:accountingbank/page/answer/answer_main_page.dart';
import 'package:accountingbank/page/setting/setting_main_page.dart';
import 'package:accountingbank/page/problem/problem_subject_page.dart';
import 'package:accountingbank/page/problem/problem_year_page.dart';
import 'package:accountingbank/page/problem/problem_round_page.dart';
import 'package:accountingbank/page/problem/problem_exam_page.dart';
import 'package:accountingbank/page/problem/problem_commentary_page.dart';
import 'package:accountingbank/page/problem/problem_question_page.dart';
import 'package:accountingbank/page/problem/problem_answer_page.dart';
import 'package:accountingbank/page/problem/problem_new_question_page.dart';
import 'package:accountingbank/page/problem/problem_new_answer_page.dart';
import 'package:accountingbank/page/problem/problem_fix_question_page.dart';
import 'package:accountingbank/page/problem/problem_fix_answer_page.dart';
import 'package:accountingbank/page/answer/answer_content_page.dart';
import 'package:accountingbank/page/answer/answer_commentary_page.dart';
import 'package:accountingbank/page/answer/answer_question_page.dart';
import 'package:accountingbank/page/answer/answer_answer_page.dart';
import 'package:accountingbank/page/answer/answer_new_question_page.dart';
import 'package:accountingbank/page/answer/answer_new_answer_page.dart';
import 'package:accountingbank/page/answer/answer_fix_question_page.dart';
import 'package:accountingbank/page/answer/answer_fix_answer_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/init",
  routes: [
    _buildInitRoute(),
    _buildShellRoute(),
    _buildExamRoute(),
    _buildProblemRoutes(),
    _buildAnswerRoutes(),
  ].expand((route) => route).toList(),
);

List<GoRoute> _buildInitRoute() {
  return [
    GoRoute(
      path: "/init",
      builder: (context, state) => const InitPage(),
    ),
  ];
}

List<RouteBase> _buildShellRoute() {
  return [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return AppShell(
          currentIndex: _getCurrentIndex(state.uri.path),
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: "/answer",
          builder: (context, state) => const AnswerMainPage(),
        ),
        GoRoute(
          path: "/setting",
          builder: (context, state) => const SettingMainPage(),
        ),
        GoRoute(
          path: "/subject",
          builder: (context, state) => const ProblemSubjectPage(),
        ),
        GoRoute(
          path: '/year/:subjectId/:naming',
          builder: (context, state) => ProblemYearPage(
            subjectId: state.pathParameters['subjectId']!,
            naming: state.pathParameters['naming']!,
          ),
        ),
        GoRoute(
          path: "/round/:subjectId/:year/:naming",
          builder: (context, state) => ProblemRoundPage(
            subjectId: state.pathParameters['subjectId']!,
            year: state.pathParameters['year']!,
            naming: state.pathParameters['naming']!,
          ),
        ),
      ],
    ),
  ];
}

List<GoRoute> _buildExamRoute() {
  return [
    GoRoute(
      path: '/exam/:examId/:roundId/:year/:naming/:pageNumber',
      builder: (context, state) => ProblemExamPage(
        examId: state.pathParameters['examId']!,
        roundId: state.pathParameters['roundId']!,
        year: state.pathParameters['year']!,
        naming: state.pathParameters['naming']!,
        pageNumber: state.pathParameters['pageNumber']!,
      ),
    ),
  ];
}

List<GoRoute> _buildProblemRoutes() {
  return [
    GoRoute(
      path:
          '/problemcommentary/:correntNumber/:correntString/:id/:examid/:name/:roundid/:year/:pageNumber',
      builder: (context, state) => ProblemCommentaryPage(
        correntNumber: state.pathParameters['correntNumber']!,
        correntString: state.pathParameters['correntString']!,
        id: state.pathParameters['id']!,
        examid: state.pathParameters['examid']!,
        name: state.pathParameters['name']!,
        roundid: state.pathParameters['roundid']!,
        year: state.pathParameters['year']!,
        pageNumber: state.pathParameters['pageNumber']!,
      ),
    ),
    GoRoute(
      path:
          '/problemquestion/:questionId/:examId/:roundId/:year/:naming/:pageNumber',
      builder: (context, state) => ProblemQuestionPage(
        questionId: state.pathParameters['questionId']!,
        examid: state.pathParameters['examId']!,
        naming: state.pathParameters['naming']!,
        roundId: state.pathParameters['roundId']!,
        year: state.pathParameters['year']!,
        pageNumber: state.pathParameters['pageNumber']!,
      ),
    ),
    GoRoute(
      path:
          '/problemanswer/:id/:questionId/:examId/:roundId/:year/:naming/:pageNumber',
      builder: (context, state) => ProblemAnswerPage(
        id: state.pathParameters['id']!,
        questionId: state.pathParameters['questionId']!,
        examId: state.pathParameters['examId']!,
        naming: state.pathParameters['naming']!,
        roundId: state.pathParameters['roundId']!,
        year: state.pathParameters['year']!,
        pageNumber: state.pathParameters['pageNumber']!,
      ),
    ),
    GoRoute(
      path: '/problemnewquestion/:id',
      builder: (context, state) => ProblemNewQuestionPage(
        id: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      path: '/problemnewanswer/:id/:questionId',
      builder: (context, state) => ProblemNewAnswerPage(
        id: state.pathParameters['id']!,
        questionId: state.pathParameters['questionId']!,
      ),
    ),
    GoRoute(
      path: '/problemfixquestion/:id/:title/:content/:questionId',
      builder: (context, state) => ProblemFixQuestionPage(
        id: state.pathParameters['id']!,
        title: state.pathParameters['title']!,
        content: state.pathParameters['content']!,
        questionId: state.pathParameters['questionId']!,
      ),
    ),
    GoRoute(
      path: '/problemfixanswer/:id/:content/:answerId',
      builder: (context, state) => ProblemFixAnswerPage(
        id: state.pathParameters['id']!,
        content: state.pathParameters['content']!,
        answerId: state.pathParameters['answerId']!,
      ),
    ),
  ];
}

List<GoRoute> _buildAnswerRoutes() {
  return [
    GoRoute(
      path: '/answercontent/:id/:naming',
      builder: (context, state) => AnswerContentPage(
        id: state.pathParameters['id']!,
        naming: state.pathParameters['naming']!,
      ),
    ),
    GoRoute(
      path: '/answercommentary/:correntNumber/:correntString/:examId/:naming',
      builder: (context, state) => AnswerCommentaryPage(
        correntNumber: state.pathParameters['correntNumber']!,
        correntString: state.pathParameters['correntString']!,
        examId: state.pathParameters['examId']!,
        naming: state.pathParameters['naming']!,
      ),
    ),
    GoRoute(
      path: '/answerquestion/:questionId/:naming',
      builder: (context, state) => AnswerQuestionPage(
        questionId: state.pathParameters['questionId']!,
        naming: state.pathParameters['naming']!,
      ),
    ),
    GoRoute(
      path: '/answeranswer/:id/:questionId/:naming',
      builder: (context, state) => AnswerAnswerPage(
        id: state.pathParameters['id']!,
        questionId: state.pathParameters['questionId']!,
        naming: state.pathParameters['naming']!,
      ),
    ),
    GoRoute(
      path: '/answernewquestion/:id',
      builder: (context, state) => AnswerNewQuestionPage(
        id: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      path: '/answernewanswer/:id/:questionId',
      builder: (context, state) => AnswerNewAnswerPage(
        id: state.pathParameters['id']!,
        questionId: state.pathParameters['questionId']!,
      ),
    ),
    GoRoute(
      path: '/answerfixquestion/:id/:title/:content/:questionId',
      builder: (context, state) => AnswerFixQuestionPage(
        id: state.pathParameters['id']!,
        title: state.pathParameters['title']!,
        content: state.pathParameters['content']!,
        questionId: state.pathParameters['questionId']!,
      ),
    ),
    GoRoute(
      path: '/answerfixanswer/:id/:content/:answerId',
      builder: (context, state) => AnswerFixAnswerPage(
        id: state.pathParameters['id']!,
        content: state.pathParameters['content']!,
        answerId: state.pathParameters['answerId']!,
      ),
    ),
  ];
}

int _getCurrentIndex(String path) {
  return switch (path) {
    var p when p.startsWith("/subject") => 0,
    var p when p.startsWith("/year") => 0,
    var p when p.startsWith("/round") => 0,
    var p when p.startsWith("/exam") => 0,
    var p when p.startsWith("/answer") => 1,
    var p when p.startsWith("/setting") => 2,
    _ => 0,
  };
}
