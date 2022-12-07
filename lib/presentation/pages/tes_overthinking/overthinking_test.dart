// ignore_for_file: constant_identifier_names

import 'package:capstone_project/common/constant.dart';
import 'package:flutter/material.dart';
import 'package:capstone_project/presentation/pages/tes_overthinking/overthinking_quiz.dart';
import 'package:capstone_project/presentation/pages/tes_overthinking/overthinking_result.dart';

class OverthinkingTest extends StatefulWidget {
  //const MentalTest({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyOverthinkingTest();
  }
}
class _MyOverthinkingTest extends State<OverthinkingTest> {
  final _questions = const [
    {
      'questionText': 'Berfikir bahwa Aku Kesepian?',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
      ],
    },
    {
      'questionText': 'Berfikir bahwa kamu tidak akan bisa berkerja jika kamu tidak keluar dari kondisi ini?',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
      ],
    },
    {
      'questionText': 'Berfikir bahwa kamu lelah dan tidak nyaman dngan kondisi ini',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
      ],
    },
    {
      'questionText': 'Berfikir bahwa berkonsentrasi adalah hal yang sulit',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
      ],
    },
    {
      'questionText': 'Berfikir bahwa apa salahku sehingga aku mengalami situasi ini',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
      ],
    },
    {
      'questionText': 'Berfikir bahwa kamu pasif dan tidak termotivasi untuk tidak melakukan aktivitas apapun',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
      ],
    },
    {
      'questionText': 'Berfikir bahwa kamu tidak bisa merasakan apapun lagi secara emosi',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
      ],
    },
    {
      'questionText': 'Berfikir mengapa kamu tidak dapat maju?',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
      ],
    },
    {
      'questionText': 'Memikirkan situasi saat ini dan berharap andai saja kondisinya lebih baik',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
      ],
    },
    {
      'questionText': 'Berfikir mengapa aku tidak dapat mengatasi sesuatu dengan lebih baik',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
      ],
    },
    {
      'questionText': 'Memikirkan tentang betapa kamu tidak bersemangat untuk melakukan apapun',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
      ],
    },
    {
      'questionText': 'Berfikir bahwa Aku marah terhadap diriku sendiri!',
      'answers': [
        {'text': 'A. Hampir Tidak Pernah', 'score': 1},
        {'text': 'B. Terkandang', 'score': 4},
        {'text': 'C. Sering', 'score': 7},
        {'text': 'D. Hampir Selalu', 'score': 10},
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
          ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions)
          : OverthinkingResult(_totalScore, _resetQuiz),
    );
  }
}
