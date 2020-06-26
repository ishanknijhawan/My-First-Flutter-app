import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

var _questions = [
  {
    'questionText': 'What\'s your favorite color ?',
    'answer': ['Red', 'Blue', 'Green']
  },
  {
    'questionText': 'What\'s your favorite animal ?',
    'answer': ['Panda', 'Lion', 'Tiger', 'Koala']
  },
  {
    'questionText': 'What\'s your favorite language ?',
    'answer': ['Dart', 'Kotlin', 'Python']
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
                answerQuestion: _answerQuestion,
                index: _index,
              )
            : Result(),
      ),
    );
  }

  _answerQuestion() {
    setState(() {
      _index = _index + 1;
      print("question index is $_index");
    });
  }
}
