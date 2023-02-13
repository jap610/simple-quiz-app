import 'package:flutter/material.dart';
import './main.dart';
import './answers.dart';

class Answers extends StatelessWidget {
final  Function Handler;
Answers(this.Handler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:
        RaisedButton(
          color: Colors.blue,
          child: Text('Answer 1'),
          onPressed:Handler,
        ),
    );
  }
}
