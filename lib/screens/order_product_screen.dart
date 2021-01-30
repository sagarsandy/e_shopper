import 'package:e_shopper/models/product.dart';
import 'package:e_shopper/widgets/app_bar_widget.dart';
import 'package:e_shopper/widgets/cake_order_form_widget.dart';
import 'package:e_shopper/widgets/juice_order_form_widget.dart';
import 'package:e_shopper/widgets/product_order_button_widget.dart';
import 'package:flutter/material.dart';

class OrderProductScreen extends StatefulWidget {
  final Product product;
  final String type;
  OrderProductScreen(this.product, this.type);

  @override
  _OrderProductScreenState createState() => _OrderProductScreenState();
}

class _OrderProductScreenState extends State<OrderProductScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Widget renderFormWidget =
        widget.type == "cake" ? CakeOrderFormWidget() : JuiceOrderFormWidget();

    return Scaffold(
      backgroundColor: Color(0xFFf1f2f7),
      appBar: PreferredSize(
        child: AppBarWidget("Place Order"),
        preferredSize: const Size.fromHeight(57),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Column(
            children: [
              // Rendering product image widget
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Center(
                  child: ClipRRect(
                    borderRadius: widget.type == "cake"
                        ? BorderRadius.circular(90)
                        : BorderRadius.circular(30),
                    child: Container(
                      height: 180,
                      child: Image.network(widget.product.imageUrl),
                    ),
                  ),
                ),
              ),
              // Rendering product title widget
              Container(
                height: 40,
                child: Text(
                  widget.product.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              // Rendering order form widget
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
      ),
      // Rendering product order button widget
      bottomNavigationBar: ProductOrderButtonWidget(_formKey),
    );
  }
}
