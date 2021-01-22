import 'package:e_shopper/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/product.dart';

class ProductListWidget extends StatelessWidget {
  final List<Product> allProducts = [
    Product(
      id: "9",
      title: "Wonderful Teacher Chocolate Photo Cake",
      description:
          "This is a chocolate flavoured cream cake with a round shape and can serve up-to 6 people.",
      price: 55.55,
      imageUrl:
          "https://i1.fnp.com/images/pr/l/wonderful-teacher-photo-cake_1.jpg",
    ),
    Product(
      id: "10",
      title: "Ariel Cartoon Pineapple Photo Cake",
      description:
          "This is a pineapple flavoured cream cake with a round shape and can serve up-to 6 people.",
      price: 55.55,
      imageUrl:
          "https://i1.fnp.com/images/pr/l/ariel-cartoon-pineapple-photo-cake_1.jpg",
    ),
    Product(
      id: "11",
      title: "Best Papa Chocolate Photo Cake",
      description:
          "This is a chocolate flavoured cream cake with a round shape and can serve up-to 6 people.",
      price: 55.55,
      imageUrl:
          "https://i1.fnp.com/images/pr/l/best-papa-chocolate-photo-cake_1.jpg",
    ),
    Product(
      id: "12",
      title: "Stay Quarantine Pineapple Cake",
      description:
          "This is a pineapple flavoured cream cake with a round shape and can serve up-to 6 people.",
      price: 55.55,
      imageUrl:
          "https://i1.fnp.com/images/pr/l/stay-quarantine-pineapple-cake_1.jpg",
    ),
    Product(
      id: "1",
      title: "Pineapple Cake",
      description:
          "This is a pineapple flavoured cream cake with a round shape and can serve up-to 6 people.",
      price: 11.11,
      imageUrl: "https://i1.fnp.com/images/pr/l/pineapple-cake_1.jpg",
    ),
    Product(
      id: "2",
      title: "Chocolate Truffle Delicious Cake",
      description:
          "This is a truffle flavoured chocolate cake with a round shape and can serve up-to 6 people.",
      price: 22.22,
      imageUrl:
          "https://i1.fnp.com/images/pr/l/chocolate-truffle-cream-cake_1.jpg",
    ),
    Product(
      id: "3",
      title: "Chocolate Cream Cake",
      description:
          "This is a chocolate flavoured cream cake with a round shape and can serve up-to 6 people.",
      price: 33.33,
      imageUrl: "https://i1.fnp.com/images/pr/l/chocolate-cream-cake_1.jpg",
    ),
    Product(
      id: "4",
      title: "Butterscotch Cake",
      description:
          "This is a Butterscotch flavoured cream cake with a round shape and can serve up-to 6 people.",
      price: 44.44,
      imageUrl: "https://i1.fnp.com/images/pr/l/butterscotch-cake_1.jpg",
    ),
    Product(
      id: "5",
      title: "Cream Drop & Cherry Pineapple Cake",
      description:
          "This is a pineapple flavoured cream cake with a round shape and can serve up-to 6 people.",
      price: 55.55,
      imageUrl:
          "https://i1.fnp.com/images/pr/l/cream-drop-cherry-pineapple-cake_1.jpg",
    ),
    Product(
      id: "6",
      title: "Special Chocolate Cake",
      description:
          "This is a chocolate flavoured cream cake with a round shape and can serve up-to 6 people.",
      price: 22.22,
      imageUrl:
          "https://i1.fnp.com/images/pr/l/v19700101053000/special-chocolate-cake_1.jpg",
    ),
    Product(
      id: "7",
      title: "Cream Pista Pineapple Cake",
      description:
          "This is a pineapple flavoured cream pista cake with a round shape and can serve up-to 6 people.",
      price: 33.33,
      imageUrl: "https://i1.fnp.com/images/pr/l/cream-pista-cake_1.jpg",
    ),
    Product(
      id: "8",
      title: "Choco Lavash Cherry Pineapple Cake",
      description:
          "This is a pineapple flavoured cream cake with a round shape and can serve up-to 6 people.",
      price: 44.44,
      imageUrl: "https://i1.fnp.com/images/pr/l/choco-lavash-cherry-cake_1.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 15,
          childAspectRatio: 2 / 1.7,
          mainAxisSpacing: 15,
        ),
        itemCount: allProducts.length,
        itemBuilder: (ctx, i) => ProductWidget(allProducts[i]),
      ),
    );
  }
}
