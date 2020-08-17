import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function clickHandler;

  Answer(this.answer, this.clickHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answer),
        onPressed: clickHandler,
        color: Colors.lightBlue,
      ),
    );
  }
}
