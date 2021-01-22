import 'package:e_shopper/screens/products_list_screen.dart';
import 'package:e_shopper/widgets/categories_list_widget.dart';
import 'package:e_shopper/widgets/offer_banner_widget.dart';
import 'package:e_shopper/widgets/products_list_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("E-Shopper"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OfferBannerWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "We provide..",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            CategoriesListWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending Cakes",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
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
                            builder: (context) => ProductListScreen("Cakes")),
                      ),
                    },
                  ),
                ],
              ),
            ),
            ProductListWidget(),
          ],
        ),
      ),
    );
  }
}
