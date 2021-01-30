import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class ProductOrderButtonWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  ProductOrderButtonWidget(this.formKey);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        if (formKey.currentState.validate()) {
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
    );
  }
}
