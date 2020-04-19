import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    return;
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whats your favorite color?',
      'Whats your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('answered question 2')),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('answered question 3');
                }),
          ],
        ),
      ),
    );
  }
}
