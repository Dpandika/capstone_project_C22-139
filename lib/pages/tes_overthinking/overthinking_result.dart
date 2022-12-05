// ignore_for_file: constant_identifier_names

import 'package:capstone_project/common/constant.dart';
import 'package:flutter/material.dart';

class OverthinkingResult extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  OverthinkingResult(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 15) {
      resultText = '10%. Kondisi fikiranmu sangat rendah';
    } else if (resultScore <= 50) {
      resultText = '50%. Kondisi fikiranmu rendah';
    } else if (resultScore <= 80) {
      resultText = '80%. Kondisi fikiranmu tinggi';
    } else {
      resultText = '90%. Kondisi fikiranmu sangat tinggi';
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
                      "Interpretasi Overthinkingmu:",
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
                      'Keterangan Score:',
                      style: kBodyText.copyWith(
                        color: kSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Rendah dan Sangat Rendah => Kamu dapat mengendalikan pikiran-pikiran negatifmu dengan baik. Kamu teidak terlalu fokus pada kejadian dan perasaan negatif yang pernah kamu alami untuk terus bisa mengendalikan pikiranmu, kamu bisa mendiskusikannya dengan para orang terdekatmu.',
                      style: kBodyText.copyWith(
                        color: kBlack,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Tinggi dan Sangat Tinggi => Kamu memikirkan hal negatif secara berulang. Kamu juga tidak dapat mengendalikan hal tersebut. Kamu teralu fokus pada kejadian dan perasaan negatif yang peranh kamu alami. Hal ini yang terkadang membuat kamu sulit beraktivitas sehari-hari. Kamu bisa mendisiskusikannya kepada Psikiater.',
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