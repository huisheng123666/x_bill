import 'package:flutter/cupertino.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

class NewsItem extends StatelessWidget {
  final String title;
  final String tag;
  final String date;
  final String cover;
  final VoidCallback onTap;

  const NewsItem({
    Key? key,
    required this.title,
    required this.tag,
    required this.date,
    required this.cover,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: Util.calc(24, context)),
        padding: EdgeInsets.only(bottom: Util.calc(24, context)),
        decoration: const BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Color(0xffF2F2F2)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Util.calc(192, context),
                  child: Text(
                    title,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kContentColorDarkTheme,
                      fontSize: Util.calc(14, context),
                    ),
                  ),
                ),
                SizedBox(height: Util.calc(16, context)),
                RichText(
                  text: TextSpan(
                      text: tag,
                      style: TextStyle(
                        color: Color(0xff5588A3),
                        fontSize: Util.calc(12, context),
                      ),
                      children: [
                        TextSpan(
                          text: '      $date',
                          style: TextStyle(color: Color(0xffB6BBBF)),
                        )
                      ]),
                )
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                cover,
                width: Util.calc(95, context),
                height: Util.calc(72, context),
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
