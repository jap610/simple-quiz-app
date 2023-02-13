import 'package:flutter/material.dart';

class Question extends StatelessWidget {
    @override
    String questions;
    Question(this.questions);
  Widget build(BuildContext context) {
    return Text(questions);
  }
}
