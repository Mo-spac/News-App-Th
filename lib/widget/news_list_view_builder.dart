import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/news_list_view.dart';

class NewsListViewBuilder extends StatelessWidget {
  // List<ArticleModel> articles = [];
  // bool isLoading = true;

  // @override
  // void initState() {
  //   getGeneralNews();
  //   super.initState();
  // }

  // Future<void> getGeneralNews() async {
  //   articles = await NewsService(dio: Dio()).getNews();
  //   isLoading = false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsService(dio: Dio()).getNews(),
        builder: (context, snapshot) {
          return NewsListView(articles: snapshot.data ?? []);
        });

    // return isLoading
    //     ? SliverToBoxAdapter(
    //         child: Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsListView(articles: articles)
    //         : SliverToBoxAdapter(
    //             child: Center(
    //               child: Text("oops There was an Error, try later!"),
    //             ),
    //           );
  }
}
