// ignore_for_file: constant_identifier_names

import 'package:capstone_project/data/model/article.dart';
import 'package:capstone_project/pages/article_page/article_detail_page.dart';
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
          icon: const Icon(Icons.menu, color: kWhite),
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
        ),
      ),
      body: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot) {
          final List<Articles> json = parseArticles(snapshot.data);
          return ListView.builder(
            itemCount: json.length,
            itemBuilder: (context, index) {
              return _buildArticleItem(context, json[index]);
            },
          );
        },
      ),
    );
  }
}

Widget _buildArticleItem(BuildContext context, Articles json) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
    leading: Image.network(
      json.picture,
      width: 100,
      height: 100,
      fit: BoxFit.fill,
    ),
    title: Text(
      json.title,
    ),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(json.author),
            ),
          ],
        ),
      ],
    ),
    onTap: () {
      Navigator.pushNamed(context, ArticlesDetailPage.ROUTE_NAME,
          arguments: json);
    },
  );
}
