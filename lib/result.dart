import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String score;
  final Function resetHandler;

  Result(int score, this.resetHandler) {
    this.score = score.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
        Text(
            "Your score:",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        Text(
            score,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        FlatButton(
          child: Text(
              "Restart Quiz!",
          style: TextStyle(fontSize: 20)),
          onPressed: resetHandler,
          textColor: Colors.red,

        )
      ]),
    );
  }
}
