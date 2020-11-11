

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_example/viewmodels/news_article_list_view_models.dart';
import 'package:mvvm_example/widgets/news_grid.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatefulWidget {
  @override
  NewsScreenState createState()=>NewsScreenState();
}


class NewsScreenState extends State<NewsScreen>{

  @override
  void initState() {
    super.initState();
    Provider.of<NewsArticleListViewModel>(context,listen: false).headLines();
  }

  @override
  Widget build(BuildContext context){
    var listViewModel=Provider.of<NewsArticleListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert)
        ],
      ),
      body:SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text("News",style: TextStyle(fontSize: 50),),
            ),
            Divider(
              color: Color(0xffff8a30),
              height: 40,
              thickness: 8,
              indent: 30,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30,bottom: 15,top: 15),
              child: Text("Head Line",style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20),),
            ),
            Expanded(
              child: NewsGrid(articles: listViewModel.articles,),
            )
          ],
        ),
      )
    );
  }
}