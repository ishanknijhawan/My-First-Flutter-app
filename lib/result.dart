import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('You did it!'),
        onPressed: () {},
      ),
    );
  }
}
