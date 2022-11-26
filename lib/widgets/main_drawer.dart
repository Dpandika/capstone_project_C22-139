import 'package:capstone_project/pages/home_page.dart';
import 'package:capstone_project/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  Widget page = const HomePage();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: Builder(
        builder: (context) {
          return MenuPage(onPageChanged: (a){setState(() {
              page = a;
            });
            ZoomDrawer.of(context)!.close();
          },);
        }
      ),
      mainScreen: page,
      drawerShadowsBackgroundColor: Colors.grey,
      menuBackgroundColor: Colors.indigo,
      borderRadius: 24,
      showShadow: true,
    );
  }
}
