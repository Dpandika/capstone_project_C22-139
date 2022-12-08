// ignore_for_file: constant_identifier_names

import 'package:capstone_project/presentation/pages/tes_stress/stress_answer.dart';
import 'package:capstone_project/presentation/pages/tes_stress/stress_question.dart';
import 'package:flutter/material.dart';

class StressQuiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  //VoidCallBack is for declaring functions that take no arguments and
  //return no value
  //Function is for any general function

  StressQuiz(
      {required this.questions,
        required this.answerQuestion,
        required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StressQuestion(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
              (answer) {
            return StressAnswer(() => answerQuestion(answer['score']),
                answer['text'] as String);
          },
        ).toList()
      ],
    );
  }
}