// ignore_for_file: constant_identifier_names

import 'package:capstone_project/presentation/pages/diary/diary_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:capstone_project/common/constant.dart';

class DiaryPage extends StatelessWidget {
  static const ROUTE_NAME = '/diary-page';
  const DiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kBrown,
        title: const Text(
          'DIARY',
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
                  "Mental Diary",
                  //textAlign: TextAlign.left,
                  style: kHeading3.copyWith(
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "Bagaimana kabarmu hari ini? Tulis kondisimu hari ini yuk!",
                  textAlign: TextAlign.left,
                  style: kBodyText.copyWith(
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    child: Text(
                      "Buat Diary",
                      style: kHeading5.copyWith(
                        fontSize: 25,
                        color: kWhite,
                        letterSpacing: 3,
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DiaryListPage();
                      }));
                    },
                  ),
                ),
                const SizedBox(height: 20),

              ],
            ),
          ),
        ],
      ),
    );
  }
}