import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int index;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[index]['questionText']),
      ...(questions[index]['answer'] as List<String>)
          .map((answer) => Answer(answerQuestion, answer))
          .toList()
    ]);
  }
}
