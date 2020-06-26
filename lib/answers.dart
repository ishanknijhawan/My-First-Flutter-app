import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedAnswer;
  final String answerString;

  Answer(this.selectedAnswer, this.answerString);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answerString,
        ),
        onPressed: selectedAnswer,
      ),
    );
  }
}
