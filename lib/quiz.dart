import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>questions;
  final int index;
  final Function handleAnswer;

  Quiz({
    @required this.questions,
    @required this.index,
    @required this.handleAnswer
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[index]['questionText'],
      ),
      ...(questions[index]['answers'] as List<Map<String, Object>>)
          .map((answer) => Answer(answer['text'],
          () => handleAnswer(answer['score'])))
          .toList(),
    ]);
  }
}
