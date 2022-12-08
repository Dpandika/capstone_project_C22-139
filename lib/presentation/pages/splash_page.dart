// ignore_for_file: constant_identifier_names

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:capstone_project/common/constant.dart';
import 'package:capstone_project/presentation/widgets/main_drawer.dart';

class SplashPage extends StatefulWidget {

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 12),
          () => Navigator.pushReplacementNamed(context, MainDrawer.ROUTE_NAME),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: Image.asset('assets/logo.png'),
              ),
              const SizedBox(height: 10),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                  decoration: BoxDecoration(
                    color: kBrown,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "MENTAL KITA",
                    style: kHeading5.copyWith(
                      fontSize: 25,
                      color: kWhite,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Cek Mental Sebelum Fatal',
                    textStyle: kHeading6.copyWith(
                      fontSize: 18,
                      letterSpacing: 1,
                    ),
                    speed: const Duration(milliseconds: 400),
                  ),
                ],
                totalRepeatCount: 4,
                pause: const Duration(milliseconds: 100),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}