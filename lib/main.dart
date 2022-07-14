import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What is your favourite colour?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Purple', 'score': 6},
        {'text': 'Pink', 'score': 4},
        {'text': 'Green', 'score': 1}
      ],
    },
    {
      'questionText': "What is your favourite animal?",
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Capybara', 'score': 6},
        {'text': 'Cheetah', 'score': 4},
        {'text': 'Lion', 'score': 1}
      ],
    },
    {
      'questionText': "What is your favourite food?",
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Cake', 'score': 6},
        {'text': 'Mocktail', 'score': 4},
        {'text': 'Sabzi', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

void _resetQuiz(){
  setState((){
  _questionIndex = 0;
  _totalScore = 0;
  });

}

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("There are more questions!");
    } else
      ("There are no more questions!");
  }

  @override
  Widget build(BuildContext context) {
    // questions = [];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Demo Project"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                  )
              : Result(_totalScore, _resetQuiz),
              ),
    );
  }
}
