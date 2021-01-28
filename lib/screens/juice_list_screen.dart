import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_shopper/screens/order_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/product.dart';
import 'package:sweetalert/sweetalert.dart';

class JuiceListScreen extends StatelessWidget {
  final String title;

  JuiceListScreen(this.title);

  final List<Product> allProducts = [
    Product(
      id: "1",
      title: "Banana Juice",
      description:
          "Freshly prepared banana juice, well you know all of it's benefits",
      price: 11.11,
      imageUrl:
          "https://previews.123rf.com/images/utima/utima1502/utima150200059/36495209-glass-of-banana-juice-with-fruit-isolated-on-white-.jpg",
    ),
    Product(
      id: "2",
      title: "Strawberry Juice",
      description:
          "A cool juice of handpicked fresh strawberries, and you know the benefits of this",
      price: 22.22,
      imageUrl:
          "https://previews.123rf.com/images/utima/utima1504/utima150400048/38690883-glass-of-strawberry-juice-with-fruit-isolated-on-white-.jpg",
    ),
    Product(
      id: "3",
      title: "Watermelon Juice",
      description:
          "Let the heat of the body cool down by this glass of watermelon juice, it really helps pumping out the heat.",
      price: 33.33,
      imageUrl:
          "https://previews.123rf.com/images/iquacu/iquacu1404/iquacu140400125/27840286-watermelon-juice-in-a-glass-on-a-white.jpg",
    ),
    Product(
      id: "4",
      title: "Kiwi Juice",
      description:
          "Pro active Kiwi juice to make you feel much more hyper active",
      price: 55.55,
      imageUrl:
          "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX1587398.jpg",
    ),
    Product(
      id: "5",
      title: "Mango Juice",
      description:
          "The summer fruit juice of the season here, the mango juice.",
      price: 88.88,
      imageUrl:
          "https://previews.123rf.com/images/yurakp/yurakp1601/yurakp160100043/50266993-glass-of-mango-juice-isolated-on-white-background-.jpg",
    ),
    Product(
      id: "6",
      title: "Apple Juice",
      description:
          "Best of the fruits, apple a day keeps doctor away. So does the apple juice",
      price: 22.22,
      imageUrl:
          "https://st2.depositphotos.com/6394734/9266/i/950/depositphotos_92666988-stock-photo-apple-juice-in-long-glass.jpg",
    ),
    Product(
      id: "7",
      title: "Carrot Juice",
      description:
          "Let the fresh blood flow in your body, by taking a carrot juice very often.",
      price: 33.33,
      imageUrl:
          "https://previews.123rf.com/images/utima/utima1501/utima150100121/35911717-glass-of-carrot-juice-with-fruit-isolated-on-white-.jpg",
    ),
    Product(
      id: "8",
      title: "Banana Juice 2 glasses @ \$15.99",
      description:
          "Freshly prepared banana juice, well you know all of it's benefits",
      price: 15.99,
      imageUrl:
          "https://previews.123rf.com/images/utima/utima1502/utima150200059/36495209-glass-of-banana-juice-with-fruit-isolated-on-white-.jpg",
    ),
    Product(
      id: "9",
      title: "Strawberry Juice 2 glasses @ \$39.99",
      description:
          "A cool juice of handpicked fresh strawberries, and you know the benefits of this",
      price: 39.99,
      imageUrl:
          "https://previews.123rf.com/images/utima/utima1504/utima150400048/38690883-glass-of-strawberry-juice-with-fruit-isolated-on-white-.jpg",
    ),
    Product(
      id: "3",
      title: "Watermelon Juice 2 glasses @ \$49.99",
      description:
          "Let the heat of the body cool down by this glass of watermelon juice, it really helps pumping out the heat.",
      price: 49.99,
      imageUrl:
          "https://previews.123rf.com/images/iquacu/iquacu1404/iquacu140400125/27840286-watermelon-juice-in-a-glass-on-a-white.jpg",
    ),
    Product(
      id: "4",
      title: "Kiwi Juice 2 glasses @ \$79.99",
      description:
          "Pro active Kiwi juice to make you feel much more hyper active",
      price: 79.99,
      imageUrl:
          "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX1587398.jpg",
    ),
    Product(
      id: "5",
      title: "Mango Juice 2 glasses @ \$149.99",
      description:
          "The summer fruit juice of the season here, the mango juice.",
      price: 149.99,
      imageUrl:
          "https://previews.123rf.com/images/yurakp/yurakp1601/yurakp160100043/50266993-glass-of-mango-juice-isolated-on-white-background-.jpg",
    ),
    Product(
      id: "6",
      title: "Apple Juice 2 glasses @ \$15.99",
      description:
          "Best of the fruits, apple a day keeps doctor away. So does the apple juice",
      price: 15.99,
      imageUrl:
          "https://st2.depositphotos.com/6394734/9266/i/950/depositphotos_92666988-stock-photo-apple-juice-in-long-glass.jpg",
    ),
    Product(
      id: "7",
      title: "Carrot Juice 2 glasses @ \$45.99",
      description:
          "Let the fresh blood flow in your body, by taking a carrot juice very often.",
      price: 45.99,
      imageUrl:
          "https://previews.123rf.com/images/utima/utima1501/utima150100121/35911717-glass-of-carrot-juice-with-fruit-isolated-on-white-.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f2f7),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          title,
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
      body: Center(
        child: CarouselSlider(
          items: allProducts.map((product) {
            return Builder(builder: (BuildContext context) {
              return Container(
                // color: Colors.black,
                width: MediaQuery.of(context).size.width - 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 390,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          product.imageUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 15),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Text(
                          product.title,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        child: Container(
                          height: 40,
                          color: Colors.orange[400],
                          child: Center(
                            child: Text(
                              "Order Now   (\$" +
                                  product.price.toString() +
                                  ")",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  OrderProductScreen(product, "juice"),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            });
          }).toList(growable: false),
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height - 100,
            enlargeCenterPage: true,
            initialPage: 0,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
