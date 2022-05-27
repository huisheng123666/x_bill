import 'package:flutter/material.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

class BlockItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final String iconPath;
  final VoidCallback onTab;

  const BlockItem({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.iconPath,
    required this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: const EdgeInsets.only(bottom: 1),
        padding: EdgeInsets.all(Util.calc(16, context)),
        width: Util.calc(171, context),
        height: Util.calc(88, context),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    height: 1,
                    color: kContentColorDarkTheme,
                    fontSize: Util.calc(14, context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: Util.calc(8, context)),
                Text(
                  subTitle,
                  style: TextStyle(
                    height: 1.3,
                    color: Color(0xffB6BBBF),
                    fontSize: Util.calc(10, context),
                  ),
                )
              ],
            ),
            Image.asset(
              iconPath,
              width: Util.calc(32, context),
              height: Util.calc(32, context),
            )
          ],
        ),
      ),
    );
  }
}
