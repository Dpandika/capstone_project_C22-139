// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import 'package:capstone_project/pages/mental_page.dart';
import 'package:capstone_project/pages/home_page.dart';
import 'package:capstone_project/pages/settings_page.dart';
import 'package:capstone_project/pages/about_page.dart';
import 'package:capstone_project/pages/articles_page.dart';
import 'package:capstone_project/pages/diary_page.dart';
import 'package:capstone_project/widgets/menu_items.dart';
import 'package:capstone_project/common/constant.dart';

class MenuPage extends StatelessWidget {
  static const ROUTE_NAME = '/menu-page';
  MenuPage({Key? key, required this.onPageChanged}) : super(key: key);

  final Function(Widget) onPageChanged;

  List<MenuItems> drawerItems = [
    const MenuItems(Icon(Icons.home), Text('Home'), HomePage()),
    const MenuItems(Icon(Icons.accessibility), Text('Mental Test'), MentalPage()),
    const MenuItems(Icon(Icons.article), Text('Articles'), ArticlesPage()),
    const MenuItems(Icon(Icons.assignment), Text('Diary'), DiaryPage()),
    const MenuItems(Icon(Icons.campaign), Text('About'), AboutPage()),
    const MenuItems(Icon(Icons.settings), Text('Settings'), SettingPage()),
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
              const SizedBox(height: 10),
              SizedBox(
                width: 10,
                child: Image.asset('assets/logo.png'),
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
                    color: kWhite,letterSpacing: 3,
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
            ],
          ),
        )
    );
  }
}


