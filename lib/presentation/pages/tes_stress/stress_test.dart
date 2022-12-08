// ignore_for_file: constant_identifier_names

import 'package:capstone_project/common/constant.dart';
import 'package:flutter/material.dart';
import 'package:capstone_project/presentation/pages/tes_stress/stress_quiz.dart';
import 'package:capstone_project/presentation/pages/tes_stress/stress_result.dart';

class StressTest extends StatefulWidget {
  //const MentalTest({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyStressTest();
  }
}
class _MyStressTest extends State<StressTest> {
  final _questions = const [
    {
      'questionText': 'Dalam satu bulan terakhir, seberapa sering Anda kesal karena sesuatu yang terjadi secara tidak terduga?',
      'answers': [
        {'text': 'A. Tidak Pernah', 'score': 1},
        {'text': 'B. Kadang-kadang', 'score': 4},
        {'text': 'C. Cukup sering', 'score': 7},
        {'text': 'D. Sangat Sering', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, sebarapa sering  Anda tidak dapat mengendalikan hal-hal yang terjadi di hidup Anda?',
      'answers': [
        {'text': 'A. Tidak Pernah', 'score': 1},
        {'text': 'B. Kadang-kadang', 'score': 4},
        {'text': 'C. Cukup sering', 'score': 7},
        {'text': 'D. Sangat Sering', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, seberapa sering Anda merasa gelisah dan stress?',
      'answers': [
        {'text': 'A. Tidak Pernah', 'score': 1},
        {'text': 'B. Kadang-kadang', 'score': 4},
        {'text': 'C. Cukup sering', 'score': 7},
        {'text': 'D. Sangat Sering', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, seberapa sering Anda tidak merasa yakin terhadap kemampuan Anda dalam menangani masalah?',
      'answers': [
        {'text': 'A. Tidak Pernah', 'score': 1},
        {'text': 'B. Kadang-kadang', 'score': 4},
        {'text': 'C. Cukup sering', 'score': 7},
        {'text': 'D. Sangat Sering', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, seberapa sering sesuatu tidak berjalan sesuai dengan keinginan Anda?',
      'answers': [
        {'text': 'A. Tidak Pernah', 'score': 1},
        {'text': 'B. Kadang-kadang', 'score': 4},
        {'text': 'C. Cukup sering', 'score': 7},
        {'text': 'D. Sangat Sering', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, sebarapa sering Anda tidak dapat mengatasi segala hal yang harus dilakukan?',
      'answers': [
        {'text': 'A. Tidak Pernah', 'score': 1},
        {'text': 'B. Kadang-kadang', 'score': 4},
        {'text': 'C. Cukup sering', 'score': 7},
        {'text': 'D. Sangat Sering', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, seberapa sering Anda tidak mampu mengendalikan hal-hal mengganggu dalam hidupmu?',
      'answers': [
        {'text': 'A. Tidak Pernah', 'score': 1},
        {'text': 'B. Kadang-kadang', 'score': 4},
        {'text': 'C. Cukup sering', 'score': 7},
        {'text': 'D. Sangat Sering', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, seberapa sering Anda tidak dapat mengendalikan hal-hal dalam hidup Anda?',
      'answers': [
        {'text': 'A. Tidak Pernah', 'score': 1},
        {'text': 'B. Kadang-kadang', 'score': 4},
        {'text': 'C. Cukup sering', 'score': 7},
        {'text': 'D. Sangat Sering', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, seberapa sering Anda marah karena sesutau terjadi di luar kendali Anda?',
      'answers': [
        {'text': 'A. Tidak Pernah', 'score': 1},
        {'text': 'B. Kadang-kadang', 'score': 4},
        {'text': 'C. Cukup sering', 'score': 7},
        {'text': 'D. Sangat Sering', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, seberapa sering Anda tidak dapat mengatasi masalah Anda?',
      'answers': [
        {'text': 'A. Tidak Pernah', 'score': 1},
        {'text': 'B. Kadang-kadang', 'score': 4},
        {'text': 'C. Cukup sering', 'score': 7},
        {'text': 'D. Sangat Sering', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score; //same as _totalScore = _totalScore + score

    setState(
          () {
        _questionIndex = _questionIndex + 1;
      },
    );
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kSecondary,
        title: const Text(
          'MENTAL TEST',
          style: TextStyle(
            color: kWhite,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: kWhite),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: _questionIndex < _questions.length
          ? StressQuiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions)
          : StressResult(_totalScore, _resetQuiz),
    );
  }
}
