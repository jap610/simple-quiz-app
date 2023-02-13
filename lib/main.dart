import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _x = 0;
  void _answer() {
    setState(() {
      _x = _x + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color?',
      'what\'s your favorite animal?',
      'what\'s your favorite car?',
      'what\'s your favorite boob size?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TEST APP'),
        ),
        body: Column(
          children: [
            Question(
              questions[_x],
            ),
            Answers(_answer),
            Answers(_answer),
            Answers(_answer),
            Answers(_answer),
          ],
        ),
      ),
    );
  }
}
