//import 'package:common_entrance_app/app_state_manager.dart';
import 'package:common_entrance_app/components/questions_pageview.dart';
//import 'package:provider/provider.dart';

import '../components/components.dart';
import 'package:common_entrance_app/components/time_tile.dart';
import 'package:flutter/material.dart';

class QuestionAnswerPage extends StatefulWidget {
  final String subjectType;
  const QuestionAnswerPage({Key? key, required this.subjectType})
      : super(key: key);

  @override
  _QuestionAnswerPageState createState() => _QuestionAnswerPageState();
}

class _QuestionAnswerPageState extends State<QuestionAnswerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.red,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Stack(
                  children:  [
                    Positioned(
                      right: 10,
                      child: TimeTile(),
                    ),
                    Positioned(
                      left: 10,
                      child: QuestionNumberTile.initialStartup(start: true),
                    ),
                  ],
                )),
            const Expanded(
              flex:9,
              child: QuestionsPageView())
          ],
        ),
      ),
    );
  }
}

