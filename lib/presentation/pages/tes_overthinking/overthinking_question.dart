// ignore_for_file: constant_identifier_names

import 'package:capstone_project/common/constant.dart';
import 'package:flutter/material.dart';

class OverthinkingQuestion extends StatelessWidget {
  final String questionText;

  OverthinkingQuestion(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Text(
        questionText,
        style: kHeading6.copyWith(
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}