import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryModel,
    // required this.onTap,
  });
  final CategoryModel categoryModel;
  // final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryView(
              category: categoryModel.categoryName,
            ),
          ),
        );

        // Navigator.pushNamed(context, CategoryView.categoryView,
        //     arguments: categoryModel.categoryName);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(categoryModel.image),
              fit: BoxFit.fill,
            ),
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              categoryModel.categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
