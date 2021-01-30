import 'package:e_shopper/models/product.dart';
import 'package:e_shopper/screens/order_product_screen.dart';
import 'package:flutter/material.dart';

class JuiceOrderButtonWidget extends StatelessWidget {
  final Product product;
  JuiceOrderButtonWidget(this.product);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        child: Container(
          height: 40,
          color: Colors.orange[400],
          child: Center(
            child: Text(
              "Order Now   (\$" + product.price.toString() + ")",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrderProductScreen(product, "juice"),
            ),
          );
        },
      ),
    );
  }
}
