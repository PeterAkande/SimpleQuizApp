import 'package:common_entrance_app/components/tests_tile.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class TestsScreen extends StatelessWidget {
  const TestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 18),
                    color: Colors.black,
                    blurRadius: 40,
                    spreadRadius: -23,
                  )
                ],
              ),
              child: Center(
                //Todo: Add a screen listing the types of examinations that the appliction has questions on
                child: Text(
                  'Choose Examination Type',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ListView.separated(
              itemCount: Tokens.length,
              itemBuilder: (context, value) {
                final examType = availableTest[value].testType;
                return TestTile(examType: examType);
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
    );
  }
}
