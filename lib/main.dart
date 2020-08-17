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
  static const questions = [
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Chicken', 'Dog', 'Cat', 'Snake']
    },
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Red', 'Green', 'Blue', 'White']
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': ['Pizza', 'Pork chop', 'Lasagna', 'Spaghetti']
    }
  ];

  void _answerQuestion() {
    print(_index);
    setState(() => _index++);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Frist App"),
        ),
        body: _index < questions.length
            ? Quiz(questions: questions, handleAnswer: _answerQuestion, index:_index)
            : Result(),
      ),
    );
  }
}
