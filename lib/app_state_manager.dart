import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class AppState extends ChangeNotifier {
  int _tabindex = 0;
  int _clicked = 0;
  int _question_number = 1;
  final int _numberOfQuestions = 60;
  // ignore: non_constant_identifier_names

  Map<int, List<List<dynamic>>> OptionsStateKeeper = {
    /*for the list, the first element in the first list is the label to check if an option has
    been chosen or not, 1 denoting true and 0 denoting false
    The second element in the first list denotes the particular option that was chosen
    And the decond element in the list is the previous widget that is colored as chosen.
    */
    for (int i = 0; i <= 60; i += 1)
      i: [
        [null, null],
        [null]
      ]
  };

  void resetOptionsState() {
    OptionsStateKeeper = {
      for (int i = 0; i <= 60; i += 1)
        i: [
          [null, null],
          [null]
        ]
    };
  }

  int get questionNumber => _question_number;
  int get numberOfQuestions => _numberOfQuestions;

  set questionNumber(index) {
    _question_number = index;
  }

  void rebuildPageView() {
    notifyListeners();
  }

  //This function is to change the chosen question
  changeSelectedQuestion(index) {
    _question_number = index;
    notifyListeners();
  }
}
