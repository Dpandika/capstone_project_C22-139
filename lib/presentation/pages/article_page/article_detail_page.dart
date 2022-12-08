import 'package:capstone_project/common/constant.dart';
import 'package:capstone_project/data/model/article.dart';
import 'package:capstone_project/pages/article_page/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticlesDetailPage extends StatelessWidget {
  static const ROUTE_NAME = '/article-detail';

  final Articles article;

  const ArticlesDetailPage({Key? key, required this.article}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(tag: article.picture, child: Image.network(article.picture)),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(color: Colors.grey),
                  Text(
                    article.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const Divider(color: Colors.grey),
                  Text(
                    'Date: ${article.releaseDate}',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Author: ${article.author}',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const Divider(color: Colors.grey),
                  Text(
                    article.description,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    child: const Text('Read more'),
                    onPressed: () {
                      Navigator.pushNamed(context, ArticleWebView.routeName,
                          arguments: article.url);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArticleWebView extends StatelessWidget {
  static const routeName = '/article-web';

  final String url;

  const ArticleWebView({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
