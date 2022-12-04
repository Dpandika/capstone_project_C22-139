// ignore_for_file: constant_identifier_names

import 'package:capstone_project/common/constant.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 15) {
      resultText = '10%. Keadaan Kamu Baik';
    } else if (resultScore <= 50) {
      resultText = '50%. Keadaan Kamu Tertekan';
    } else if (resultScore <= 80) {
      resultText = '80%. Keaddaan Kamu Depresi';
    } else {
      resultText = '90%. Kamu butuh Dokter';
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
                      "Tingkat Kesehatan Mental:",
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
                      'Mesikupun kamu memilki beban di hidupmu, namun kamu masih dapat mengatasinya. Kamu juga bisa berkegiatan seperti biasa dan merasa punya kendali dalam hidupmu.',
                      style: kBodyText.copyWith(
                        color: kBlack,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Penasaran mengapa kondisimu sekarang sedang baik-baik saja?',
                      style: kBodyText.copyWith(
                        color: kBlack,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Yuk, cari tau lebih lanjut mengenai apa arti dari hasil test yang kamu miliki dan bagaimana kamu bisa menjaga kesehatan mentalmu!',
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