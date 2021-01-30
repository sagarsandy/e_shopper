import 'package:e_shopper/models/category.dart';
import 'package:e_shopper/screens/chocolates_list_screen.dart';
import 'package:e_shopper/screens/coming_soon_screen.dart';
import 'package:e_shopper/screens/juice_list_screen.dart';
import 'package:e_shopper/screens/products_list_screen.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  final int index;

  CategoryWidget(this.category, this.index);

  @override
  Widget build(BuildContext context) {
    Color titleColor = Colors.black;
    if (index > 2) {
      titleColor = Colors.grey;
    }
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
              ),
            ),
          ),
          Text(
            category.title,
            style: TextStyle(color: titleColor),
          ),
        ],
      ),
      onTap: () => {
        print(category.title),
        if (category.title == "Chocolates")
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChocolatesListScreen(category.title),
              ),
            ),
          }
        else if (category.title == "Juice")
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JuiceListScreen(category.title),
              ),
            ),
          }
        else if (category.title == "Cakes")
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductListScreen(category.title),
              ),
            ),
          }
        else
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ComingSoonScreen(),
              ),
            ),
          }
      },
    );
  }
}
