import 'package:common_entrance_app/screens/q_n_answer_screen.dart';

import '../screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../screens/tests_and_questions_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (BuildContext context) => const Home());
      case '/choose_test':
        String _examType = '';

        if (args is List) {
          _examType = args[0];
        }

        return MaterialPageRoute(
            builder: (BuildContext context) => TestsQuestionsScreen(
                  examType: _examType,
                ));
      case '/tests':
        String _subjectType = '';

        if (args is List){
          _subjectType = args[0];
        }

        return MaterialPageRoute(builder: (context) => QuestionAnswerPage( subjectType: _subjectType));
      default:
        _errorRoute();
    }
    return _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('Error'),
      ),
    );
  });
}
