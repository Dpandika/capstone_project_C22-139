import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// ignore_for_file: constant_identifier_names

import 'package:capstone_project/common/constant.dart';

class AboutPage extends StatelessWidget {
  static const ROUTE_NAME = '/about-page';
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kBrown,
        title: const Text(
          'ABOUT',
          style: TextStyle(
            color: kWhite,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
              Icons.menu,
              color: kWhite),
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                const SizedBox(height: 50),
                Center(
                  child: Column (
                    children: [
                      SizedBox(
                        width: 150,
                        child: Image.asset('assets/logo.png'),
                      ),
                      Text(
                        "Mental Kita",
                        //textAlign: TextAlign.left,
                        style: kHeading3.copyWith(
                          fontSize: 25,
                          color: kBrown,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        "Cek Mental Sebelum Fatal",
                        style: kBodyText.copyWith(
                        ),
                      ),
                    ]
                  )
                ),
                const SizedBox(height: 30),
                Text(
                  "Mental Kita adalah sebuah mobile aplikasi yang diperutuhkan kepada seseorang yang sedang mengalami masalah mental dan ingin mengecek bagaiman kondisi mentalnnya.",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Mental Kita juga menyediakan bahan bacaan untuk membantu menjaga kesehatan mental para penggunannya.",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Selain itu Mental Kita juga menyediakan catatan diary yang bisa digunakan user untuk mencatat kondisinya.",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Mental Kita masih dalam tahap pengembangan dan akan terus di Upgrade untuk tercapainya SDGs.",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Text(
                    "App Version 1.0",
                    style: overline.copyWith(
                      fontSize: 12,
                      color: kBrown,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}