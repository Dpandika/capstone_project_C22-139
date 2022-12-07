// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import 'package:capstone_project/presentation/pages/mental_page.dart';
import 'package:capstone_project/presentation/pages/stress_page.dart';
import 'package:capstone_project/presentation/pages/overthinking_page.dart';
import 'package:capstone_project/presentation/pages/about_page.dart';
import 'package:capstone_project/presentation/pages/articles_page.dart';
import 'package:capstone_project/presentation/pages/diary_page.dart';
import 'package:capstone_project/presentation/widgets/menu_items.dart';
import 'package:capstone_project/common/constant.dart';

class MenuPage extends StatelessWidget {
  static const ROUTE_NAME = '/menu-page';
  MenuPage({Key? key, required this.onPageChanged}) : super(key: key);

  final Function(Widget) onPageChanged;

  List<MenuItems> drawerItems = [
    const MenuItems(Icon(Icons.accessibility), Text('Mental Test'), MentalPage()),
    const MenuItems(Icon(Icons.add_reaction), Text('Stress Test'), StressPage()),
    const MenuItems(Icon(Icons.emoji_objects), Text('Overthinking Test'), OverthinkingPage()),
    const MenuItems(Icon(Icons.article), Text('Articles'), ArticlesPage()),
    const MenuItems(Icon(Icons.assignment), Text('Diary'), DiaryPage()),
    const MenuItems(Icon(Icons.campaign), Text('About'), AboutPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrime,
        body: Theme(
          data: ThemeData.dark(),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 30),
              SizedBox(
                width: 100,
                child: Image.asset(
                  'assets/logo.png',
                  width: 100,
                  height: 100,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                decoration: const BoxDecoration(
                  color: kBrown,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  "MENTAL KITA",
                  style: kHeading5.copyWith(
                    fontSize: 18,
                    color: kWhite,
                    letterSpacing: 3,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: drawerItems
                    .map((e) => ListTile(
                  onTap: (){
                    onPageChanged(e.page);
                  },
                  title: e.title,
                  leading: e.icon,
                  iconColor: kBrown,
                  textColor: kBrown,
                )).toList(),
              ),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 20),
                child: Text(
                  "App Version 1.0",
                  style: overline.copyWith(
                    fontSize: 12,
                    color: kBrown,
                    letterSpacing: 1,
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}


