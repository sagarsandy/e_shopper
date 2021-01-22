import 'package:e_shopper/models/product.dart';
import 'package:e_shopper/widgets/bullet_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sweetalert/sweetalert.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  ProductDetailsScreen(this.product);
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              "Order Now",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        onTap: () => showOrderDialog(context),
      ),
    );
  }

  Future<void> showOrderDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        final TextEditingController _wishMessageTEC = TextEditingController();
        final TextEditingController _chefMessageTEC = TextEditingController();
        final TextEditingController _sizeMessageTEC = TextEditingController();
        final TextEditingController _priceMessageTEC = TextEditingController();

        return AlertDialog(
          content: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Customise your order",
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  controller: _wishMessageTEC,
                  validator: (value) {
                    return value.isEmpty ? "Please enter wish message" : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Wish message to be printed on cake",
                    hintStyle: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: TextFormField(
                        controller: _sizeMessageTEC,
                        onChanged: (value) {
                          _priceMessageTEC.text =
                              "\$" + (int.parse(value) * 10).toString();
                        },
                        validator: (value) {
                          if (value.isNotEmpty && int.parse(value) < 1) {
                            return "Cake size should be greater than or equal to 1kg";
                          }
                          return value.isEmpty
                              ? "Please enter number of kgs"
                              : null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Number of kgs, eg: 2",
                          hintStyle: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 60,
                      child: TextFormField(
                        controller: _priceMessageTEC,
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: "Price",
                          hintStyle: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  controller: _chefMessageTEC,
                  decoration: InputDecoration(
                    hintText: "Instructions for chef..",
                    hintStyle: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Container(
              height: 30,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Text("Cancel"),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    child: Text(
                      "Order",
                      style:
                          TextStyle(fontSize: 18, color: Colors.orangeAccent),
                    ),
                    onTap: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.of(context).pop();
                        SweetAlert.show(
                          context,
                          title: "Order Placed!!",
                          style: SweetAlertStyle.success,
                        );
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
