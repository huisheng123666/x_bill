import 'dart:math';

import 'package:flutter/material.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

class CommonNav {
  static AppBar generator(BuildContext context, String title,
      [Color textColor = kContentColorDarkTheme,
      Color backgroundColor = Colors.white,
      double elevation = 0.2]) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: textColor,
          fontSize: Util.calc(16, context),
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: backgroundColor,
      elevation: elevation,
      iconTheme: IconThemeData(
        size: Util.calc(16, context),
        color: textColor,
      ),
    );
  }
}
