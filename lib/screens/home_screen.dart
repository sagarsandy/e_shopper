import 'package:e_shopper/screens/products_list_screen.dart';
import 'package:e_shopper/widgets/categories_list_widget.dart';
import 'package:e_shopper/widgets/offer_banner_widget.dart';
import 'package:e_shopper/widgets/products_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:sweetalert/sweetalert.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "E-Shopper",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                SweetAlert.show(context,
                    title: "Wait..", subtitle: "This app is in beta testing");
              },
              child: Icon(
                Icons.info,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Rendering offers banner widget
            OfferBannerWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "We provide..",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            // Rendering categories list widget
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
