import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';
import 'package:news_app/widget/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/images/business.avif',
      categoryName: 'business',
    ),
    CategoryModel(
      image: 'assets/images/entertaiment.avif',
      categoryName: 'entertainment',
    ),
    CategoryModel(
      image: 'assets/images/health.avif',
      categoryName: 'health',
    ),
    CategoryModel(
      image: 'assets/images/science.avif',
      categoryName: 'science',
    ),
    CategoryModel(
      image: 'assets/images/technology.jpeg',
      categoryName: 'technology',
    ),
    CategoryModel(
      image: 'assets/images/sports.avif',
      categoryName: 'sports',
    ),
    CategoryModel(
      image: 'assets/images/general.avif',
      categoryName: 'general',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryModel: CategoryModel(
              image: categories[index].image,
              categoryName: categories[index].categoryName,
            ),
          );
        },
      ),
    );
  }
}
