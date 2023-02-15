import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answer;
  final int x;

  quiz({required this.questions, required this.answer, required this.x});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[x]['QuestionText'] as String,
        ),
        ...(questions[x]['answers'] as List<String>).map((answers) {
          return Answers(answer, answers);
        }).toList()
      ],
    );
  }
}
