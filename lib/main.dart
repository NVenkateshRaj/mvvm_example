import 'package:flutter/material.dart';
import 'package:mvvm_example/screens/news_screen.dart';
import 'package:mvvm_example/viewmodels/news_article_list_view_models.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfffefdfd),
        appBarTheme: AppBarTheme(
          color: Color(0xffefdfd),
          elevation: 0,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
            )
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.black
          )
        ),
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>NewsArticleListViewModel()),
        ],
        child: NewsScreen(),
      ),
    );
  }
}