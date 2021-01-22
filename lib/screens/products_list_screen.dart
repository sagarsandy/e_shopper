import 'package:e_shopper/widgets/cake_widget.dart';
import 'package:e_shopper/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/product.dart';

class ProductListScreen extends StatelessWidget {
  final String title;

  ProductListScreen(this.title);

  final List<Product> allProducts = [
    Product(
      id: "1",
      title: "Product One",
      description: "This is product one description",
      price: 11.11,
      imageUrl:
          "https://i1.fnp.com/images/pr/l/cream-drop-chocolate-cake_1.jpg",
    ),
    Product(
      id: "2",
      title: "Product Two",
      description: "This is product two description",
      price: 22.22,
      imageUrl: "https://i1.fnp.com/images/pr/l/pineapple-cake_1.jpg",
    ),
    Product(
      id: "3",
      title: "Product three",
      description: "this is product three description",
      price: 33.33,
      imageUrl: "https://i1.fnp.com/images/pr/l/black-forest-cake_1.jpg",
    ),
    Product(
      id: "4",
      title: "Product Four",
      description: "This is product four description",
      price: 44.44,
      imageUrl: "https://i1.fnp.com/images/pr/l/truffle-cake_1.jpg",
    ),
    Product(
      id: "5",
      title: "Product Five",
      description: "THis is product five description",
      price: 55.55,
      imageUrl: "https://i1.fnp.com/images/pr/l/kit-kat-cake_1.jpg",
    ),
    Product(
      id: "2",
      title: "Product Two",
      description: "This is product two description",
      price: 22.22,
      imageUrl:
          "https://i1.fnp.com/images/pr/l/crunchy-butterscotch-cake_1.jpg",
    ),
    Product(
      id: "3",
      title: "Product three",
      description: "this is product three description",
      price: 33.33,
      imageUrl:
          "https://i1.fnp.com/images/pr/l/valentine-heart-shaped-cake_1.jpg",
    ),
    Product(
      id: "4",
      title: "Product Four",
      description: "This is product four description",
      price: 44.44,
      imageUrl: "https://i1.fnp.com/images/pr/l/crunchy-kit-kat-cake_1.jpg",
    ),
    Product(
      id: "5",
      title: "Product Five",
      description: "THis is product five description",
      price: 55.55,
      imageUrl:
          "https://i1.fnp.com/images/pr/l/cream-drop-chocolate-cake_1.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f2f7),
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: allProducts.length,
        itemBuilder: (ctx, i) => CakeWidget(allProducts[i]),
      ),
    );
  }
}
