import 'package:flutter/material.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

class CommonNav {
  static AppBar generator(BuildContext context, String title) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: kContentColorDarkTheme,
          fontSize: Util.calc(16, context),
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.2,
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.keyboard_arrow_left,
          size: Util.calc(24, context),
          color: kContentColorDarkTheme,
        ),
      ),
    );
  }
}
