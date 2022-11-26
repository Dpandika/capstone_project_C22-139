import 'package:flutter/material.dart';

import 'package:capstone_project/pages/mental_page.dart';
import 'package:capstone_project/pages/home_page.dart';
import 'package:capstone_project/pages/settings_page.dart';
import 'package:capstone_project/pages/about_page.dart';
import 'package:capstone_project/pages/articles_page.dart';
import 'package:capstone_project/pages/diary_page.dart';

import 'package:capstone_project/widgets/menu_items.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key, required this.onPageChanged}) : super(key: key);

  final Function(Widget) onPageChanged;

  List<MenuItems> drawerItems = [
    const MenuItems(Icon(Icons.home), Text('Mental Test'), HomePage()),
    const MenuItems(Icon(Icons.home), Text(''), SettingPage()),
    const MenuItems(Icon(Icons.home), Text('Mental Test'), MentalPage()),
    const MenuItems(Icon(Icons.home), Text('Articles'), ArticlesPage()),
    const MenuItems(Icon(Icons.home), Text('Diary'), DiaryPage()),
    const MenuItems(Icon(Icons.home), Text('About'), AboutPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: Theme(
          data: ThemeData.dark(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: drawerItems
              .map((e) => ListTile(
                onTap: (){
                  onPageChanged(e.page);
                },
                title: e.title,
                leading: e.icon,
              )).toList(),
          ),
        )
    );
  }
}


