import 'package:flutter/material.dart';

class BulletTextWidget extends StatelessWidget {
  final String title;
  BulletTextWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(
        children: [
          // Rendering bullet
          Text(
            String.fromCharCode(0x2022),
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepOrangeAccent,
            ),
          ),
          // Rendering text after the bullet
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
