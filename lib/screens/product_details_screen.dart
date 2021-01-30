import 'package:e_shopper/models/product.dart';
import 'package:e_shopper/screens/order_product_screen.dart';
import 'package:e_shopper/widgets/app_bar_widget.dart';
import 'package:e_shopper/widgets/bullet_text_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  ProductDetailsScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBarWidget("Cake"),
        preferredSize: const Size.fromHeight(57),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Rendering product image widget
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  // height: 200,
                ),
              ),
            ),
            // Rendering product title text widget
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.title,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            // Rendering product description widget
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.description,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            // Rendering product features using bullet text widgets
            BulletTextWidget("Available in different sizes"),
            BulletTextWidget("Can be prepared with and without egg"),
            BulletTextWidget("Will be delivered to any location in 2 hours"),
            BulletTextWidget("Enjoy your cake!!"),
          ],
        ),
      ),
      // Rendering Order now button widget, to navigate to order screen
      bottomNavigationBar: GestureDetector(
        child: Container(
          height: 45,
          color: Colors.orangeAccent,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "Order Now   (\$" + product.price.toString() + ")",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        onTap: () => navigateToOrderProductScreen(context),
      ),
    );
  }

  // Navigation to product order screen
  navigateToOrderProductScreen(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderProductScreen(product, "cake"),
      ),
    );
  }
}
