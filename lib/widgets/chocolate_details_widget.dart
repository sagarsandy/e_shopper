import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class ChocolateDetailsWidget extends StatelessWidget {
  final String title;
  ChocolateDetailsWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Rendering chocolate title text widget
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 140),
            child: Text(
              title,
              maxLines: 3,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Rendering buy now button along with order palced success widget
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
                  desc: 'Will be delivered to default location',
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
    );
  }
}
