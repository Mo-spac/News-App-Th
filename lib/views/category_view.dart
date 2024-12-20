import 'package:flutter/material.dart';
import 'package:news_app/widget/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  static const categoryView = "CategoryView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: '',
            ),
          ],
        ),
      ),
    );
  }
}
