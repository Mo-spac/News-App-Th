import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/category_view.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  // NewsService(dio: Dio()).getNews;
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// ArticleModel articleModel
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      //   routes: {
      //     HomeView.homeView: (context) => HomeView(),
      //     CategoryView.categoryView: (context) => CategoryView(
      //           category: categoryModel.categoryName,
      //         ),
      //   },
      //   initialRoute: HomeView.homeView,
    );
  }
}
