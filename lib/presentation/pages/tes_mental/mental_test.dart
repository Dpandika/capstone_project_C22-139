// ignore_for_file: constant_identifier_names

import 'package:capstone_project/common/constant.dart';
import 'package:flutter/material.dart';
import 'package:capstone_project/presentation/pages/tes_mental/mental_quiz.dart';
import 'package:capstone_project/presentation/pages/tes_mental/mental_result.dart';

class MentalTest extends StatefulWidget {
  //const MentalTest({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyMentalTest();
  }
}
class _MyMentalTest extends State<MentalTest> {
  final _questions = const [
    {
      'questionText': 'Dalam satu bulan terakhir, apakah kamu merasa tidak sanggup mengatasi kesulitan?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 10},
        {'text': 'B. Sama seperti biasanya', 'score': 7},
        {'text': 'C. Kurang dari biasanya', 'score': 4},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 1},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, apakah kamu merasa tidak bahagia dan tertekan?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 10},
        {'text': 'B. Sama seperti biasanya', 'score': 7},
        {'text': 'C. Kurang dari biasanya', 'score': 4},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 1},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, apakah kamu sulit dalam mengambil keputusan?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 10},
        {'text': 'B. Sama seperti biasanya', 'score': 7},
        {'text': 'C. Kurang dari biasanya', 'score': 4},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 1},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, apakah kamu mampu melakukan hal-hal yang bermanfaat dalam hidup?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 1},
        {'text': 'B. Sama seperti biasanya', 'score': 4},
        {'text': 'C. Kurang dari biasanya', 'score': 7},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, apakah kamu bisa menikmati kegiatan atau pekerjaan sehari-hari?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 1},
        {'text': 'B. Sama seperti biasanya', 'score': 4},
        {'text': 'C. Kurang dari biasanya', 'score': 7},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, apakah kamu merasa tenang dan damai?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 1},
        {'text': 'B. Sama seperti biasanya', 'score': 4},
        {'text': 'C. Kurang dari biasanya', 'score': 7},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, apakah kamu susah tidur karena khawatir?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 10},
        {'text': 'B. Sama seperti biasanya', 'score': 7},
        {'text': 'C. Kurang dari biasanya', 'score': 4},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 1},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, apakah kamu bisa berkonsentrasi pada hal-hal yang sedang kamu kerjakan?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 1},
        {'text': 'B. Sama seperti biasanya', 'score': 4},
        {'text': 'C. Kurang dari biasanya', 'score': 7},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, apakah kamu bisa menghadapi masalah-masalah yang ada?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 1},
        {'text': 'B. Sama seperti biasanya', 'score': 4},
        {'text': 'C. Kurang dari biasanya', 'score': 7},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, apakah kamu merasa kehilangan kepercayaan diri?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 10},
        {'text': 'B. Sama seperti biasanya', 'score': 7},
        {'text': 'C. Kurang dari biasanya', 'score': 4},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 1},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, seberapa sering Anda merasa telah mejadi orang yang bahagia?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 1},
        {'text': 'B. Sama seperti biasanya', 'score': 4},
        {'text': 'C. Kurang dari biasanya', 'score': 7},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 10},
      ],
    },
    {
      'questionText': 'Dalam satu bulan terakhir, seberapa sering kamu berfikir bahwa kamu adalah seorang yang tidak berguna?',
      'answers': [
        {'text': 'A. Iya, lebih dari biasanya', 'score': 10},
        {'text': 'B. Sama seperti biasanya', 'score': 7},
        {'text': 'C. Kurang dari biasanya', 'score': 4},
        {'text': 'D. Sangat kurang dari biasanya', 'score': 1},
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
          : Result(_totalScore, _resetQuiz),
    );
  }
}
