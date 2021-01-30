import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  AppBarWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Icon theme set to white, so that navigation back button color will be white
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      // Rendering title of the app bar
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      // Rendering app bar info icon
      actions: [
        Padding(
          padding: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              AwesomeDialog(
                context: context,
                animType: AnimType.SCALE,
                headerAnimationLoop: false,
                title: 'Hey..!!',
                desc: 'We are still in beta testing',
              )..show();
            },
            child: Icon(
              Icons.info,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
