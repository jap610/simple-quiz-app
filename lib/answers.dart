import 'package:flutter/material.dart';
import './main.dart';
import './answers.dart';

class Answers extends StatelessWidget {
  final VoidCallback Handler;
  final String AnswerText;

  Answers(this.Handler, this.AnswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(onPressed: Handler, child: Text(AnswerText))
        //RaisedButton(
        // color: Colors.blue,
        //  textColor: Colors.white,
        // child: Text(AnswerText),
        // onPressed: Handler,
        // ),
        );
  }
}
