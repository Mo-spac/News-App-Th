import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/error_message.dart';
import 'package:news_app/widget/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
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

  var future;
  @override
  void initState() {
    future = NewsService(dio: Dio()).getTopHeadlines(category: 'general');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return ErrorMessage(message: "oops There was an Error, try later!");
          } else {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
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
