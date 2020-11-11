import 'package:flutter/cupertino.dart';
import 'package:mvvm_example/models/news_article.dart';
import 'package:mvvm_example/services/web_services.dart';
import 'package:mvvm_example/viewmodels/news_article_view_models.dart';
import 'package:flutter/material.dart';

enum LoadingStatus{
  completed,
  searching,
  empty
}

class NewsArticleListViewModel with ChangeNotifier{

  LoadingStatus loadingStatus=LoadingStatus.empty;

  List<NewsArticleViewModels> articles=List<NewsArticleViewModels>();

  void headLines()async{

    List<NewsArticle> newsArticle=await WebService().fetchDetails();

    loadingStatus=LoadingStatus.searching;

    this.articles=newsArticle.map((e) => NewsArticleViewModels(article: e)).toList();

    if(this.articles.isEmpty){

      this.loadingStatus=LoadingStatus.empty;
    }else{

      this.loadingStatus=LoadingStatus.completed;
    }

    notifyListeners();
  }
}