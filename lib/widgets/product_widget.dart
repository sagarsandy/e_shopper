import 'package:e_shopper/models/product.dart';
import 'package:e_shopper/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:ribbon/ribbon.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  ProductWidget(this.product);

  @override
  Widget build(BuildContext context) {
    return Ribbon(
      nearLength: 15,
      farLength: 55,
      title: "\$" + product.price.toString(),
      color: Colors.orangeAccent,
      titleStyle: TextStyle(color: Colors.white),
      location: RibbonLocation.topEnd,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailsScreen(product),
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: GridTile(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black54,
              title: Text(
                product.title,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
