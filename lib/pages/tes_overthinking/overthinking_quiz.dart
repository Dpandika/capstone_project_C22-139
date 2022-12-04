// ignore_for_file: constant_identifier_names

import 'package:capstone_project/pages/tes_overthinking/overthinking_answer.dart';
import 'package:capstone_project/pages/tes_overthinking/overthinking_question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  //VoidCallBack is for declaring functions that take no arguments and
  //return no value
  //Function is for any general function

  Quiz(
      {required this.questions,
        required this.answerQuestion,
        required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OverthinkingQuestion(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
              (answer) {
            return OverthinkingAnswer(() => answerQuestion(answer['score']),
                answer['text'] as String);
          },
        ).toList()
      ],
    );
  }
}