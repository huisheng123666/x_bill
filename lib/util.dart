import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Util {
  static calc(int px, BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return px / 375 * screenWidth;
  }

  static screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static setStatusBarTextColor(SystemUiOverlayStyle theme) {
    SystemChrome.setSystemUIOverlayStyle(theme);
  }
}
