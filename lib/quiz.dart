import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  final index;
  Function handleAnswer;

  Quiz({@required this.questions, @required this.index, @required this.handleAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[index]['questionText'],
      ),
      ...(questions[index]['answers'] as List<String>)
          .map((answer) => Answer(answer, handleAnswer))
          .toList(),
    ]);
  }
}
