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
  final questions = const [
    {
      'QuestionText': 'what\'s your favorite color?',
      'answers': ['black', 'white', 'white&black', 'black&white']
    },
    {
      'QuestionText': 'what\'s your favorite animal?',
      'answers': ['dogs', 'cats', 'rabbits', 'birds']
    },
    {
      'QuestionText': 'what\'s your favorite car?',
      'answers': ['bmw', 'Bmw', 'bMw', 'bmW']
    },
    {
      'QuestionText': 'what\'s your favorite game?',
      'answers': ['the witcher 3', 'red dead', 'outer wilds', 'metal gear']
    },
  ];
  int _x = 0;

  void _answer() {
    setState(() {
      _x = _x + 1;
    });
    if (_x < questions.length) {
      print('see you later');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TEST APP'),
        ),
        body: _x < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_x]['QuestionText'] as String,
                  ),
                  ...(questions[_x]['answers'] as List<String>).map((answers) {
                    return Answers(_answer, answers);
                  }).toList()
                ],
              )
            : Container(
                child: Center(
                child: Text(
                  ' i knew it, you are a bmw fan!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
      ),
    );
  }
}
