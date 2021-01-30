import 'package:e_shopper/widgets/app_bar_widget.dart';
import 'package:e_shopper/widgets/categories_list_widget.dart';
import 'package:e_shopper/widgets/offer_banner_widget.dart';
import 'package:e_shopper/widgets/products_list_widget.dart';
import 'package:e_shopper/widgets/trending_cakes_text_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: AppBarWidget("E-Bakers"),
        preferredSize: const Size.fromHeight(57),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Rendering offers banner widget
            OfferBannerWidget(),
            // Rendering We provide text widget
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
            // Rendering trending cakes and view all text widget
            TrendingCakesTextWidget(),
            // Rendering trending cakes list
            ProductListWidget(),
          ],
        ),
      ),
    );
  }
}
