import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var totalScore = 0;
  static const questions = [
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Chicken', 'score': 0},
        {'text': 'Dog', 'score': 2},
        {'text': 'Cat', 'score': 4},
        {'text': 'Snake', 'score': 8}
      ]
    },
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 4},
        {'text': 'White', 'score': 0}
      ]
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'text': 'Pizza', 'score': 0},
        {'text': 'Pork chop', 'score': 8},
        {'text': 'Lasagna', 'score': 2},
        {'text': 'Spaghetti', 'score': 4}
      ]
    }
  ];

  void _answerQuestion(int score) {
    setState(() {
      _index++;
      totalScore += score;
    });
  }

  void _resetQuiz()
  {
    setState(() {
      _index = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Frist App"),
        ),
        body: _index < questions.length
            ? Quiz(
                questions: questions,
                handleAnswer: _answerQuestion,
                index: _index)
            : Result(totalScore, _resetQuiz),
      ),
    );
  }
}
