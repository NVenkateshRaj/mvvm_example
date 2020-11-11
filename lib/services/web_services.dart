import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mvvm_example/models/news_article.dart';



class WebService{

  Future<List<NewsArticle>> fetchDetails()async{

    Dio dio=new Dio();

   try{
     final response=await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=a5cc5825a5d948dabbd1108bde300142');

     if(response.statusCode==200){
       final result=response.data;
       print(response.data);
       Iterable list=result['articles'];
       return list.map((e) => NewsArticle.fromJson(e)).toList();
     }
     else{
       throw Exception("Failed to load");
     }
   }
   catch(e){
     print(e);
   }

  }

}