import 'package:flutter/material.dart';
import '../models/models.dart';

class TestSubjectTile extends StatelessWidget {
  final String subjectType;
  const TestSubjectTile({Key? key, required this.subjectType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushReplacementNamed('/tests', arguments: [subjectType]);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        height: 100,
        width: 50,
        child: Center(
          child: Text(
            subjectType,
            style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
