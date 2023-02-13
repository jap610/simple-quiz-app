import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  @override
  final String questions;
  Question(this.questions);
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      width: double.infinity,
      child: Text(
        questions,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
