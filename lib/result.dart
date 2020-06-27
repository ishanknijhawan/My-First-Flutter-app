import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  final int score;
  final Function reset;

  Result(this.score, this.reset);

  var text = "";

  @override
  Widget build(BuildContext context) {
    if (score > 10 && score < 20)
      text = 'Sexy';
    else if (score > 20 && score < 30)
      text = 'Amazing';
    else if (score > 30 && score < 40)
      text = 'Mind blowing';
    else
      text = 'next level bro';

    return Center(
        child: Column(
      textDirection: TextDirection.ltr,
      children: <Widget>[
        Text(
          'You are $text',
          //temp commit
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
        OutlineButton(
          color: Colors.blue,
          textTheme: ButtonTextTheme.primary,
          textColor: Colors.blue,
          child: Text(
            'Reset',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          onPressed: reset,
        ),
      ],
    ));
  }
}
