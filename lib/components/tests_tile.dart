import 'package:flutter/material.dart';
import '../models/models.dart';

class TestTile extends StatelessWidget {
  final String examType;
  const TestTile({Key? key, required this.examType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          Navigator.of(context).pushNamed(EduAppPages.takeTest, arguments: [examType]);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        height: 100,
        width: 50,
        child: Center(
          child: Text(
            examType,
            style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
