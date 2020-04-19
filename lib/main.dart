import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    return;
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Whats your favorite color?',
        'answers': [
          'Blue',
          'Red',
          'Yellow',
          'Black',
        ]
      },
      {
        'questionText': 'Whats your favorite animal?',
        'answers': [
          'Snake',
          'Dog',
          'Cat',
          'Parrot',
        ]
      },
      {
        'questionText': 'Who is Dan?',
        'answers': [
          'Human',
          'Robot',
          'Alien',
          'Animal',
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
