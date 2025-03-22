import 'package:accountingbank/page/answer/answer_commentary_page.dart';
import 'package:accountingbank/page/answer/answer_content_page.dart';
import 'package:accountingbank/page/answer/answer_main_page.dart';
import 'package:accountingbank/page/app_shell.dart';

import 'package:accountingbank/page/init_page.dart';
import 'package:accountingbank/page/problem/problem_answer_page.dart';
import 'package:accountingbank/page/problem/problem_commentary_page.dart';
import 'package:accountingbank/page/problem/problem_exam_page.dart';
import 'package:accountingbank/page/problem/problem_fix_answer_page.dart';
import 'package:accountingbank/page/problem/problem_fix_question_page.dart';
import 'package:accountingbank/page/problem/problem_new_answer_page.dart';
import 'package:accountingbank/page/problem/problem_new_question_page.dart';
import 'package:accountingbank/page/problem/problem_question_page.dart';
import 'package:accountingbank/page/problem/problem_round_page.dart';
import 'package:accountingbank/page/problem/problem_subject_page.dart';
import 'package:accountingbank/page/problem/problem_year_page.dart';
import 'package:accountingbank/page/setting/setting_main_page.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/init",
  routes: [
    GoRoute(
      path: "/init",
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => const InitPage(),
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return AppShell(
          currentIndex: switch (state.uri.path) {
            var p when p.startsWith("/subject") => 0,
            var p when p.startsWith("/year") => 0,
            var p when p.startsWith("/round") => 0,
            var p when p.startsWith("/exam") => 0,
            var p when p.startsWith("/answer") => 1,
            var p when p.startsWith("/setting") => 2,
            _ => 0,
          },
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: "/answer",
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) {
            return const AnswerMainPage();
          },
        ),
        GoRoute(
          path: "/setting",
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) {
            return const SettingMainPage();
          },
        ),
        GoRoute(
          path: "/subject",
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) {
            return const ProblemSubjectPage();
          },
        ),

        // subject -> year -> round -> exam
        GoRoute(
            path: '/year/:id/:naming',
            builder: (context, state) {
              return ProblemYearPage(
                id: state.pathParameters['id']!,
                naming: state.pathParameters['naming']!,
              );
            }),
        GoRoute(
          path: "/round/:id/:year/:naming",
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) {
            return ProblemRoundPage(
              id: state.pathParameters['id']!,
              year: state.pathParameters['year']!,
              naming: state.pathParameters['naming']!,
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: '/answercontent/:id/:naming',
      builder: (context, state) {
        return AnswerContentPage(
          id: state.pathParameters['id']!,
          naming: state.pathParameters['naming']!,
        );
      },
    ),
    GoRoute(
      path: '/exam/:id/:naming',
      builder: (context, state) => ProblemExamPage(
        id: state.pathParameters['id']!,
        naming: state.pathParameters['naming']!,
      ),
    ),
    GoRoute(
      path: '/problemcommentary/:correntNumber/:correntString/:id',
      builder: (context, state) => ProblemCommentaryPage(
        correntNumber: state.pathParameters['correntNumber']!,
        correntString: state.pathParameters['correntString']!,
        id: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      path: '/answercommentary/:correntNumber/:correntString/:id',
      builder: (context, state) => AnswerCommentaryPage(
        correntNumber: state.pathParameters['correntNumber']!,
        correntString: state.pathParameters['correntString']!,
        id: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      path: '/problemquestion/:id',
      builder: (context, state) => ProblemQuestionPage(
        id: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      path: '/problemanswer/:id/:questionId',
      builder: (context, state) => ProblemAnswerPage(
        id: state.pathParameters['id']!,
        questionId: state.pathParameters['questionId']!,
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
  ],
);


/*
 GoRoute(
          path: "/chapter",
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const ChapterMainPage(),
          routes: [
            GoRoute(
              path: '/chaptercontent',
              builder: (context, state) {
                return const ChapterContentPage();
              },
            ),
          ],
        ),
        GoRoute(
          path: "/years",
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const YearsMainPage(),
          routes: [
            GoRoute(
              path: '/yearscontent',
              builder: (context, state) {
                return const YearsContentPage();
              },
            ),
          ],
        ),
*/