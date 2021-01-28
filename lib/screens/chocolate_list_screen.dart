import 'package:e_shopper/widgets/cake_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/product.dart';
import 'package:sweetalert/sweetalert.dart';

class ChocolateListScreen extends StatelessWidget {
  final String title;

  ChocolateListScreen(this.title);

  final List<Product> allProducts = [
    Product(
      id: "1",
      title: "Cadbury Dairy Milk",
      description:
          "Tasty tasty dairy milk, order now and get 10% cashback on all cadbury chocolates",
      price: 11.11,
      imageUrl:
          "https://assets.sainsburys-groceries.co.uk/gol/3321003/1/640x640.jpg",
    ),
    Product(
      id: "2",
      title: "Fuse",
      description:
          "Delicious nuts and chocolate cream made, get 15% cashback on all cadbury items",
      price: 22.22,
      imageUrl:
          "https://www.bigbasket.com/media/uploads/p/xxl/40091018-2_5-cadbury-fuse-chocolate-bar.jpg",
    ),
    Product(
      id: "3",
      title: "Snickers",
      description:
          "Best of chocolate nuts, get 10% instant discount on your first snickers order.",
      price: 33.33,
      imageUrl:
          "https://www.netmeds.com/images/product-v1/600x600/911784/snickers_chocolate_bar_50_gm_0_0.jpg",
    ),
    Product(
      id: "4",
      title: "5 Start 3D",
      description:
          "Pro active protein filled 5 star 3D, get 15% cashback now!!",
      price: 55.55,
      imageUrl:
          "https://images-na.ssl-images-amazon.com/images/I/61FQgF6lLRL._SL1500_.jpg",
    ),
    Product(
      id: "5",
      title: "Mars",
      description: "Get 50% discount on your first mars chocolate order..",
      price: 88.88,
      imageUrl:
          "https://www.londondrugs.com/on/demandware.static/-/Sites-londondrugs-master/default/dw7d9316cd/products/L4272753/large/L4272753.JPG",
    ),
    Product(
      id: "6",
      title: "Kit Kat",
      description: "Kids kit kat, get 7% discount on your order now!!",
      price: 22.22,
      imageUrl:
          "https://images-na.ssl-images-amazon.com/images/I/51cASHLyaRL.jpg",
    ),
    Product(
      id: "7",
      title: "Perk",
      description:
          "We offer no offers, because we are the best of the best of best of the best",
      price: 33.33,
      imageUrl:
          "https://images-na.ssl-images-amazon.com/images/I/41Qyea9EesL.jpg",
    ),
    Product(
      id: "8",
      title: "Cadbury Dairy Milk, order 3 @ 25.99",
      description:
          "Tasty tasty dairy milk, order now and get 10% cashback on all cadbury chocolates",
      price: 25.99,
      imageUrl:
          "https://assets.sainsburys-groceries.co.uk/gol/3321003/1/640x640.jpg",
    ),
    Product(
      id: "9",
      title: "Fuse, order 3 @ 55.99",
      description:
          "Delicious nuts and chocolate cream made, get 15% cashback on all cadbury items",
      price: 55.99,
      imageUrl:
          "https://www.bigbasket.com/media/uploads/p/xxl/40091018-2_5-cadbury-fuse-chocolate-bar.jpg",
    ),
    Product(
      id: "10",
      title: "Snickers, order 3 @ 56.99",
      description:
          "Best of chocolate nuts, get 10% instant discount on your first snickers order.",
      price: 56.99,
      imageUrl:
          "https://www.netmeds.com/images/product-v1/600x600/911784/snickers_chocolate_bar_50_gm_0_0.jpg",
    ),
    Product(
      id: "11",
      title: "5 Start 3D, order 3 @ 99.99",
      description:
          "Pro active protein filled 5 star 3D, get 15% cashback now!!",
      price: 99.99,
      imageUrl:
          "https://images-na.ssl-images-amazon.com/images/I/61FQgF6lLRL._SL1500_.jpg",
    ),
    Product(
      id: "12",
      title: "Mars, order 3 @ 149.99",
      description: "Get 50% discount on your first mars chocolate order..",
      price: 149.99,
      imageUrl:
          "https://www.londondrugs.com/on/demandware.static/-/Sites-londondrugs-master/default/dw7d9316cd/products/L4272753/large/L4272753.JPG",
    ),
    Product(
      id: "13",
      title: "Kit Kat, order 3 @ 39.99",
      description: "Kids kit kat, get 7% discount on your order now!!",
      price: 39.99,
      imageUrl:
          "https://images-na.ssl-images-amazon.com/images/I/51cASHLyaRL.jpg",
    ),
    Product(
      id: "14",
      title: "Perk, order 3 @ 49.99",
      description:
          "We offer no offers, because we are the best of the best of best of the best",
      price: 49.99,
      imageUrl:
          "https://images-na.ssl-images-amazon.com/images/I/41Qyea9EesL.jpg",
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListWheelScrollView.useDelegate(
          itemExtent: 190,
          childDelegate: ListWheelChildBuilderDelegate(
            childCount: allProducts.length,
            builder: (context, index) => Container(
              // color: Colors.cyan,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width - 30,
                  color: Colors.orange[50],
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 140,
                            width: 200,
                            color: Colors.red,
                            child: Image.network(
                              allProducts[index].imageUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 100,
                            width: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  allProducts[index].title,
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "\$" + allProducts[index].price.toString(),
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: Colors.orange,
                                    width: 80,
                                    height: 20,
                                    child: Center(
                                      child: Text(
                                        "Buy Now",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        height: 40,
                        child: Text(allProducts[index].description),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
