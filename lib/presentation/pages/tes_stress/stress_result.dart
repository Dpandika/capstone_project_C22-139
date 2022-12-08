// ignore_for_file: constant_identifier_names

import 'package:capstone_project/common/constant.dart';
import 'package:flutter/material.dart';

class StressResult extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  StressResult(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 15) {
      resultText = '10%. Keadaanmu sangat baik';
    } else if (resultScore <= 50) {
      resultText = '30%. Tingkat stressmu rendah';
    } else if (resultScore <= 80) {
      resultText = '60%. Tingakt stressmu cukup tinggi';
    } else {
      resultText = '90%. Tingkat strssmu sangat tinggi. Segera ke Psikiater!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: SizedBox(
                        width: 200,
                        child: Image.asset('assets/image1.png'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Tingkat Stress:",
                      style: kHeading3.copyWith(
                        fontSize: 18,
                        color: kBlack,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      resultPhrase,
                      style: kHeading5.copyWith(
                        color: kSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Meskipun tidak atau ada beban kamu harus tetap semangat dalam menjalani kehidupanmu.',
                      style: kBodyText.copyWith(
                        color: kBlack,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Temukanlah tujuan yang mendalam dalam dirimu dan coba capai tujuan tersebut!',
                      style: kBodyText.copyWith(
                        color: kBlack,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Yuk, cari tau lebih lanjut mengenai apa arti dari hasil test yang kamu miliki dan bagaimana kamu bisa menjaga kesehatan mentalmu dan mengelolah stressmu!',
                      style: kBodyText.copyWith(
                        color: kBlack,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: resetHandler,
                      child: Text(
                        'Ulangi Test!',
                        style: kHeading5.copyWith(
                          color: kWhite,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}