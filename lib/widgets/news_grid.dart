

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_example/viewmodels/news_article_list_view_models.dart';
import 'package:mvvm_example/viewmodels/news_article_view_models.dart';
import 'package:mvvm_example/widgets/circle_image.dart';

class NewsGrid extends StatelessWidget {
  final List<NewsArticleViewModels> articles;


  NewsGrid({this.articles});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context,index){
        var article=articles[index];
        return GridTile(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: CircleImage(imageUrl: article.urlToImage,),
          ),
          footer: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(article.title==null?"No Value":article.title,style: TextStyle(fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.ellipsis,),
          ),
        );
      },
      itemCount: this.articles.length,
    );
  }


}


