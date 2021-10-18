import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionindex;
  final VoidCallback answerQuestion;
  quiz(
      {required this.question,
      required this.questionindex,
      required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        uestion(question[questionindex]['questions'] as String),
        ...(question[questionindex]['answer'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
