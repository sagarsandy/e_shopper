import 'package:e_shopper/models/product.dart';
import 'package:e_shopper/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class CakeWidget extends StatelessWidget {
  final Product product;
  CakeWidget(this.product);

  // Navigation to product details screen
  navigateToProductDetailsScreen(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 300,
      height: 260,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 5.0,
            child: GestureDetector(
              child: Container(
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFffffff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Rendering product title text widget
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width: 200,
                          child: Text(
                            product.title,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // Rendering product price text widget
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "\$" + product.price.toString(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () => navigateToProductDetailsScreen(context),
            ),
          ),
          // Rendering cake image widget
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(140),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(2.0, 1.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Stack(
              children: [
                GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      product.imageUrl,
                      height: 200,
                      width: 260,
                      fit: BoxFit.cover,
                    ),
                  ),
                  onTap: () => navigateToProductDetailsScreen(context),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
