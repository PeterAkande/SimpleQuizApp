import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_state_manager.dart';

class QuestionChooser extends StatelessWidget {
  
  int value;
  Function pageControl;
  QuestionChooser({
    Key? key,
    required this.value,
    required this.pageControl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final appStateInstance = Provider.of<AppState>(context);
    return GestureDetector(
      onTap: (){
        pageControl(value-1);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)),
        height: 20,
        width: 60,
        child: Center(
          child: Text(
            value.toString(),
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

