import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionString;

  Question(this.questionString);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionString,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
