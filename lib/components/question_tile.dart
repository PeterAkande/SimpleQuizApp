import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_state_manager.dart';

class QuestionNumberTile extends StatelessWidget {
  bool? start;

  QuestionNumberTile({
    Key? key,
  }) : super(key: key);

  QuestionNumberTile.initialStartup({Key? key, required this.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var stateInstance = Provider.of<AppState>(context);
    if (start != null) {
      stateInstance.questionNumber = 1;
      start = null;
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 50,
      // width: 120,
      child: Center(
        child: Consumer<AppState>(
          builder: (context, value, Widget? child) => Text(
            //Use a static question number which is 60
            'Question: ${stateInstance.questionNumber}/${stateInstance.numberOfQuestions}',
            style:
                Theme.of(context).textTheme.headline3?.copyWith(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
