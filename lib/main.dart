// ignore_for_file: constant_identifier_names

import 'package:capstone_project/pages/about_page.dart';
import 'package:capstone_project/pages/articles_page.dart';
import 'package:capstone_project/pages/diary_page.dart';
import 'package:capstone_project/pages/stress_page.dart';
import 'package:capstone_project/pages/mental_page.dart';
import 'package:capstone_project/pages/overthinking_page.dart';
import 'package:capstone_project/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

import 'package:capstone_project/pages/splash_page.dart';
import 'package:capstone_project/common/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application .
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Capstone Project',
      theme: ThemeData.light().copyWith(
        colorScheme: kColorScheme,
        primaryColor: kBlack,
        scaffoldBackgroundColor: kPrime,
        textTheme: kTextTheme,
      ),
      home: const SplashPage(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case StressPage.ROUTE_NAME:
            return MaterialPageRoute(
              builder: (_) => const StressPage(),
            );
          case MentalPage.ROUTE_NAME:
            return MaterialPageRoute(
              builder: (_) => const MentalPage(),
            );
          case ArticlesPage.ROUTE_NAME:
            return MaterialPageRoute(
              builder: (_) => const ArticlesPage(),
            );
          case DiaryPage.ROUTE_NAME:
            return MaterialPageRoute(
              builder: (_) => const DiaryPage(),
            );
          case AboutPage.ROUTE_NAME:
            return MaterialPageRoute(
              builder: (_) => const AboutPage(),
            );
          case OverthinkingPage.ROUTE_NAME:
            return MaterialPageRoute(
              builder: (_) => const OverthinkingPage(),
            );
          case MainDrawer.ROUTE_NAME:
            return MaterialPageRoute(
              builder: (_) => const MainDrawer(),
            );
          default:
            return MaterialPageRoute(
              builder: (_) {
                return const Scaffold(
                  body: Center(
                    child: Text('Page not found'),
                  ),
                );
              },
            );
        }
      },
    );
  }
}

