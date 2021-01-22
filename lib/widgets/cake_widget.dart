import 'package:e_shopper/models/product.dart';
import 'package:flutter/material.dart';

class CakeWidget extends StatelessWidget {
  final Product product;

  CakeWidget(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 300,
      height: 260,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 5.0,
            child: Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFFffffff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        width: 200,
                        child: Text(
                          product.title + " Hello world this is long text",
                          maxLines: 2,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "\$" + product.price.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(140),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(2.0, 1.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(140),
                  child: Image.network(
                    product.imageUrl,
                    height: 200,
                    width: 260,
                    fit: BoxFit.fitWidth,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
