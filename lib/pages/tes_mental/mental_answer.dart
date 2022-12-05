// ignore_for_file: constant_identifier_names

import 'package:capstone_project/common/constant.dart';
import 'package:flutter/material.dart';

class MentalAnswer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  MentalAnswer(this.selectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320, //Take as much width as it can get
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: kBodyText.copyWith(
            color: kWhite,
          ),
        ),
      ),
    );
  }
}