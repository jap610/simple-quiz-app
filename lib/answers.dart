import 'package:flutter/material.dart';
import './main.dart';
import './answers.dart';

class Answers extends StatelessWidget {
final  Function Handler;
final  String AnswerText;
Answers(this.Handler,this.AnswerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(AnswerText),
          onPressed:Handler,
        ),
    );
  }
}
