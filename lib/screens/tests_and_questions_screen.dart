import '../components/components.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class TestsQuestionsScreen extends StatelessWidget {
  final String examType;
  const TestsQuestionsScreen({Key? key, required this.examType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          examType,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: Container(
        color: Colors.red,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          SizedBox(height: 40),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ListView.separated(
                itemCount: Tokens.length,
                itemBuilder: (context, value) {
                  final subjectType =
                      AvailableSubjects().subjects[value].subjectName;
                  return TestSubjectTile(subjectType: subjectType ?? 'Subject');
                },
                separatorBuilder: (context, value) {
                  return const SizedBox(
                    height: 10,
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ]),
      ),
    );
  }
}
