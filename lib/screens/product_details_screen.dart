import 'package:e_shopper/models/product.dart';
import 'package:e_shopper/screens/order_product_screen.dart';
import 'package:e_shopper/widgets/bullet_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sweetalert/sweetalert.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  ProductDetailsScreen(this.product);
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "Cake",
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.title,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
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
            BulletTextWidget("Available in different sizes"),
            BulletTextWidget("Can be prepared with and without egg"),
            BulletTextWidget("Will be delivered to any location in 2 hours"),
            BulletTextWidget("Enjoy your cake!!"),
          ],
        ),
      ),
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

  navigateToOrderProductScreen(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderProductScreen(product, "cake"),
      ),
    );
  }
}
