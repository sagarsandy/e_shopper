import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:e_shopper/models/product.dart';
import 'package:e_shopper/widgets/app_bar_widget.dart';
import 'package:e_shopper/widgets/cake_order_form_widget.dart';
import 'package:e_shopper/widgets/juice_order_form_widget.dart';
import 'package:flutter/material.dart';

class OrderProductScreen extends StatelessWidget {
  final Product product;
  final String type;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  OrderProductScreen(this.product, this.type);

  @override
  Widget build(BuildContext context) {
    Widget renderFormWidget =
        type == "cake" ? CakeOrderFormWidget() : JuiceOrderFormWidget();

    return Scaffold(
      backgroundColor: Color(0xFFf1f2f7),
      appBar: PreferredSize(
        child: AppBarWidget("Place Order"),
        preferredSize: const Size.fromHeight(57),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Center(
                child: ClipRRect(
                  borderRadius: type == "cake"
                      ? BorderRadius.circular(90)
                      : BorderRadius.circular(30),
                  child: Container(
                    height: 180,
                    child: Image.network(product.imageUrl),
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              child: Text(
                product.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: renderFormWidget,
              ),
            )
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
              "Place Order",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        onTap: () {
          if (_formKey.currentState.validate()) {
            AwesomeDialog(
              context: context,
              animType: AnimType.SCALE,
              headerAnimationLoop: false,
              dialogType: DialogType.SUCCES,
              title: 'Order Placed !!',
              desc: 'We will deliver this as soon as possible..',
            )..show();
          }
        },
      ),
    );
  }
}
