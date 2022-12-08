import 'dart:convert';

// To parse this JSON data, do
//
//     final articles = articlesFromJson(jsonString);

class Articles {
  final String picture;
  final String author;
  final String title;
  final String releaseDate;
  final String url;
  final String description;

  Articles({
    required this.picture,
    required this.author,
    required this.title,
    required this.releaseDate,
    required this.url,
    required this.description,
  });

  factory Articles.fromJson(Map<String, dynamic> article) => Articles(
        picture: article['picture'],
        author: article['author'],
        title: article['title'],
        releaseDate: article['releaseDate'],
        url: article['url'],
        description: article['description'],
      );
}

List<Articles> parseArticles(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  return parsed.map((json) => Articles.fromJson(json)).toList();
}
