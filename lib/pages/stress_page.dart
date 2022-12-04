// ignore_for_file: constant_identifier_names

import 'package:capstone_project/pages/tes_stress/stress_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:capstone_project/common/constant.dart';

class StressPage extends StatelessWidget {
  static const ROUTE_NAME = '/home-page';
  const StressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kBrown,
        title: const Text(
          'STRESS TEST',
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
                const SizedBox(height: 10),
                Center(
                  child: SizedBox(
                    width: 200,
                    child: Image.asset('assets/image1.png'),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Tes Sehat Mental",
                  //textAlign: TextAlign.left,
                  style: kHeading3.copyWith(
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "Bagaimana kabarmu akhir-akhir ini? Cek kondisi kesehatan mentalmu yuk!",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    child: Text(
                      "MULAI TEST",
                      style: kHeading5.copyWith(
                        fontSize: 25,
                        color: kWhite,
                        letterSpacing: 3,
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return StressTest();
                      }));
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Baca penduan pengisiannya, yuk!",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
                  ),
                ),
                Text(
                  "1. Gak ada jawaban yang benar atau salah. Isilah dengan jujur sesuai dengan kepribadianmu.",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
                  ),
                ),
                Text(
                  "2. Santai aja, tes ini tidak diberikan waktu, kok.",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
                  ),
                ),
                Text(
                  "3. Cari tempat yang nyaman dengan kondusif supaya kamu lebih fokus.",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
                  ),
                ),
                Text(
                  "4. Hasil tes bisa kamu dapatkan setelah mengisi semua pertanyaan dengan lengkap.",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
                  ),
                ),
                Text(
                  "Selamat mengisi, ya! :)",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
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