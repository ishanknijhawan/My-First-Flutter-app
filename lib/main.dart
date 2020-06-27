import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

var totalScore = 0;
const _questions = [
  {
    'questionText': 'What\'s your favorite color ?',
    'answer': [
      {'color': 'Red', 'score': 8},
      {'color': 'Blue', 'score': 15},
      {'color': 'Green', 'score': 10}
    ]
  },
  {
    'questionText': 'What\'s your favorite animal ?',
    'answer': [
      {'color': 'Panda', 'score': 8},
      {'color': 'Lion', 'score': 15},
      {'color': 'Tiger', 'score': 10},
      {'color': 'Koala', 'score': 21},
    ]
  },
  {
    'questionText': 'What\'s your favorite language ?',
    'answer': [
      {'color': 'Dart', 'score': 8},
      {'color': 'Kotlin', 'score': 15},
      {'color': 'Python', 'score': 5}
    ]
  }
];
var _index = 0;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _index < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestions,
                index: _index,
              )
            : Result(totalScore, _resetQuiz),
      ),
    );
  }

  _resetQuiz() {
    setState(() {
      totalScore = 0;
      _index = 0;
    });
  }

  _answerQuestions(score) {
    setState(() {
      _index = _index + 1;
      totalScore += score;
      print('total score is $totalScore');
      print("question index is $_index");
    });
  }
}
