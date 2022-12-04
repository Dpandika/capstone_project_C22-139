// ignore_for_file: constant_identifier_names

import 'package:capstone_project/pages/mental_page.dart';
import 'package:capstone_project/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:capstone_project/common/constant.dart';

class MainDrawer extends StatefulWidget {
  static const ROUTE_NAME = '/main-drawer';

  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  Widget page = const MentalPage();
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
      drawerShadowsBackgroundColor: kGrey,
      menuBackgroundColor: kPrime,
      borderRadius: 24,
      showShadow: true,
    );
  }
}
