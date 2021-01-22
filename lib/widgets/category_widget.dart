import 'package:e_shopper/models/category.dart';
import 'package:e_shopper/screens/products_list_screen.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;

  CategoryWidget(this.category);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                category.imageUrl,
                fit: BoxFit.cover,
                // fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Text(category.title),
        ],
      ),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductListScreen(category.title),
          ),
        ),
      },
    );
  }
}
