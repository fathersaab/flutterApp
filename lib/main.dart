import 'package:first/quiz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return myAppstate();
  }
}

class myAppstate extends State<myApp> {
  var questionindex = 0;
  var totalscore = 0;
  void _answerQuestion(int score) {
    totalscore += score;
    setState(() {
      if (questionindex > 1) {
        questionindex = 0;
      } else
        questionindex++;
    });
  }

  Widget build(BuildContext context) {
    var question = [
      {
        'questions': 'what is ur name ?',
        'answer': [
          {'text': 'Nikhil', 'score': 1},
          {'text': 'Abhinav', 'score': 1},
          {'text': 'Ayush', 'score': 1},
          {'text': 'dheeru', 'score': 1},
        ],
      },
      {
        'questions': 'what is ur surname ?',
        'answer': [
          {'text': 'singh', 'score': 1},
          {'text': 'saini', 'score': 1},
          {'text': 'kumar', 'score': 1},
          {'text': 'thakur', 'score': 1}
        ],
      },
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first App'),
      ),
      body: questionindex < question.length
          ? quiz(
              answerQuestion: _answerQuestion,
              question: question,
              questionindex: questionindex,
            )
          : Center(
              child: RaisedButton(
                onPressed: _answerQuestion,
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                  'Do again',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
    ));
  }
}
