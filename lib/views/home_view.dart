import 'package:flutter/material.dart';
import 'package:news_app/widget/categories_list_view.dart';
import 'package:news_app/widget/category_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const homeView = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: CategoriesListView(),
    );
  }
}
