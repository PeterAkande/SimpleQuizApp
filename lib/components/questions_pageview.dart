import 'package:flutter/material.dart';

import 'question_chooser_tile.dart';
import 'package:provider/provider.dart';
import '../app_state_manager.dart';
import 'options_grid.dart';

class QuestionsPageView extends StatefulWidget{
   const QuestionsPageView({
    Key? key,
  }) : super(key: key);

  @override
  State<QuestionsPageView> createState() => _QuestionsPageViewState();
}

class _QuestionsPageViewState extends State<QuestionsPageView>{
  late PageController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    Provider.of<AppState>(context, listen: false).resetOptionsState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }



  @override
  Widget build(BuildContext context) {
    var stateInstance = Provider.of<AppState>(context);

    goToPage(index) {
      _controller.animateToPage(index, duration: Duration(milliseconds: 2000), curve: Curves.ease);
    }

    return Column(
      children: [
        Consumer(
          builder: (BuildContext context, value, Widget? child) { 
          return Expanded(
            flex: 8,
            child: PageView.builder(
              onPageChanged: (index){
                stateInstance.changeSelectedQuestion(index+1);
              },
                controller: _controller,
                itemCount: stateInstance.numberOfQuestions,
                itemBuilder: (BuildContext context, value) {
                  return Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Image(
                            image: AssetImage('assets/question.jpg'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        flex: 4,
                        child: OptionsGrid(
                          //To be replaced by number of options available soon
                          itemCount: 4,
                          label: value,
                        ),
                      )
                    ],
                  );
                }),
          );}
        ),
        Expanded(
          flex: 1,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            scrollDirection: Axis.horizontal,
            itemCount: 60,
            itemBuilder: (context, value) {
              return QuestionChooser(
                pageControl: goToPage,
                value: value+1,
              );
            },
            separatorBuilder: (context, value) {
              return const SizedBox(
                width: 5,
              );
            },
          ),
        ),
      ],
    );
  }
}

