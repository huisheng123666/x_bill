import 'package:flutter/material.dart';
import 'package:x_bill/util.dart';

class NavBar extends StatelessWidget {
  final Color iconColor;
  final EdgeInsets horizonPadding;
  final String title;
  final VoidCallback onBack;

  const NavBar({
    super.key,
    this.iconColor = Colors.white,
    this.horizonPadding = const EdgeInsets.symmetric(horizontal: 0),
    required this.title,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Util.calc(44, context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onBack,
            child: Icon(
              Icons.keyboard_arrow_left,
              size: Util.calc(24, context),
              color: iconColor,
            ),
          ),
          Spacer(),
          Text(
            title,
            style: TextStyle(
              color: iconColor,
              fontSize: Util.calc(16, context),
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          SizedBox(width: Util.calc(24, context))
        ],
      ),
    );
  }
}
