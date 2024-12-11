import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sports.avif'),
            fit: BoxFit.fill,
          ),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            'Sport',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
