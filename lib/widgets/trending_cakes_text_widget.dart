import 'package:e_shopper/screens/products_list_screen.dart';
import 'package:flutter/material.dart';

class TrendingCakesTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Rendering trending cakes text widget
          Text(
            "Trending Cakes",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          // Rendering view all button widget
          GestureDetector(
            child: Text(
              "View All",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductListScreen("Cakes"),
                ),
              ),
            },
          ),
        ],
      ),
    );
  }
}
