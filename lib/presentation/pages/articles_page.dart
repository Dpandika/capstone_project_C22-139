// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:capstone_project/common/constant.dart';

class ArticlesPage extends StatelessWidget {
  static const ROUTE_NAME = '/articles-page';
  const ArticlesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kBrown,
        title: const Text(
          'ARTICLES',
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
    );
  }
}