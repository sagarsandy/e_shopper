import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:e_shopper/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ribbon/ribbon.dart';
import '../models/product.dart';

class ChocolatesListScreen extends StatelessWidget {
  final String title;

  ChocolatesListScreen(this.title);

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
      appBar: PreferredSize(
        child: AppBarWidget(title),
        preferredSize: const Size.fromHeight(57),
      ),
      body: ListView.builder(
        itemCount: allProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Ribbon(
              nearLength: 45,
              farLength: 85,
              title: "\$" + allProducts[index].price.toString(),
              color: Colors.orangeAccent,
              titleStyle: TextStyle(color: Colors.white),
              location: RibbonLocation.topEnd,
              child: Card(
                elevation: 90.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadowColor: Colors.black,
                child: Container(
                  height: 207,
                  child: Column(
                    children: [
                      Container(
                        height: 110,
                        margin: EdgeInsets.only(top: 7),
                        width: MediaQuery.of(context).size.width - 60,
                        child: Image.network(
                          allProducts[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width - 140),
                              child: Text(
                                allProducts[index].title,
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: InkWell(
                                splashColor: Colors.orange,
                                onTap: () {
                                  AwesomeDialog(
                                    context: context,
                                    animType: AnimType.SCALE,
                                    headerAnimationLoop: false,
                                    dialogType: DialogType.SUCCES,
                                    title: 'Order Placed !!',
                                    desc:
                                        'Will be delivered to default location',
                                  )..show();
                                },
                                child: Container(
                                  color: Colors.greenAccent,
                                  width: 80,
                                  height: 25,
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
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 35,
                        child: Text(allProducts[index].description),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
