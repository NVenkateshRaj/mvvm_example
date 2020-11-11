import 'package:mvvm_example/models/news_article.dart';

class NewsArticleViewModels {

  NewsArticle newsArticle;

  NewsArticleViewModels({NewsArticle article}):newsArticle=article;


  String get title=>newsArticle.title;

  String get author=>newsArticle.author;

  String get description=>newsArticle.description;

  String get urlToImage=>newsArticle.urlToImage;

  String get url=>newsArticle.url;

  String get publishAt=>newsArticle.publishAt;

  String get content=>newsArticle.content;

}