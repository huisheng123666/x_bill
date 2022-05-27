import 'package:flutter/material.dart';
import 'package:x_bill/util.dart';

class HomeData extends StatelessWidget {
  const HomeData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Util.calc(111, context),
      width: Util.calc(343, context),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: Util.calc(15, context),
            ),
            child: Row(
              children: [
                _icon_data(context, '授信总金额', '227.89',
                    'assets/home/credit_amount@2x.png', '亿'),
                Container(
                  height: Util.calc(24, context),
                  width: 1,
                  color: Color(0xffF0F1F2),
                ),
                _icon_data(context, '申请户数', '338213',
                    'assets/home/apply_num@2x.png', '次'),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Color(0xffF0F1F2),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Util.calc(48, context)),
            height: Util.calc(40, context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: '金融机构数：',
                    style: TextStyle(color: Color(0xff737980)),
                    children: [
                      TextSpan(
                        text: '28家',
                        style: TextStyle(color: Color(0xff292E33)),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: '金融产品数：',
                    style: TextStyle(color: Color(0xff737980)),
                    children: [
                      TextSpan(
                        text: '82项',
                        style: TextStyle(color: Color(0xff292E33)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _icon_data(BuildContext context, String title, String total,
      String img, String unit) {
    return SizedBox(
      width: Util.calc(171, context),
      child: Row(
        children: [
          SizedBox(
            width: Util.calc(27, context),
          ),
          Image.asset(
            img,
            width: Util.calc(32, context),
            height: Util.calc(32, context),
          ),
          SizedBox(width: Util.calc(16, context)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff737980),
                  fontSize: Util.calc(12, context),
                ),
              ),
              SizedBox(
                height: Util.calc(4, context),
              ),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: total,
                  style: TextStyle(
                    color: Color(0xff292E33),
                    fontSize: Util.calc(16, context),
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: unit,
                      style: TextStyle(
                        color: Color(0xff292E33),
                        fontSize: Util.calc(12, context),
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
