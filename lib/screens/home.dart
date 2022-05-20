import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: Util.calc(308, context),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  'assets/home/title.webp',
                  width: Util.screenWidth(context),
                  height: Util.calc(220, context),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: Util.calc(197, context),
                  child: const HomeData(),
                )
              ],
            ),
          ),
          SizedBox(
            height: Util.calc(16, context),
          ),
          SizedBox(
            height: Util.calc(169, context),
            child: Swiper(
              itemCount: 3,
              viewportFraction: 0.936,
              itemBuilder: (context, index) => ProductItem(
                index: index,
              ),
            ),
          ),
          SizedBox(
            height: Util.calc(16, context),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: Util.calc(170, context),
                      height: Util.calc(88, context),
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final int index;

  const ProductItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: Util.calc(4, context)),
        padding: EdgeInsets.all(Util.calc(20, context)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Util.calc(8, context))),
        child: Column(
          children: [
            SizedBox(
              height: Util.calc(16, context),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '三峡云e贷',
                    style: TextStyle(
                        height: 1.09,
                        color: Color(0xff36414D),
                        fontSize: Util.calc(16, context),
                        fontWeight: FontWeight.w500,
                        textBaseline: TextBaseline.ideographic),
                  ),
                  SizedBox(width: Util.calc(4, context)),
                  Container(
                    height: Util.calc(16, context),
                    width: Util.calc(48, context),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius:
                          BorderRadius.circular(Util.calc(4, context)),
                    ),
                    child: Text(
                      '最低利率',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Util.calc(10, context)),
                    ),
                  ),
                  Spacer(flex: 1),
                  Image.asset(
                    'assets/home/icbc@2x.png',
                    width: Util.calc(16, context),
                    height: Util.calc(16, context),
                  ),
                  SizedBox(width: Util.calc(4, context)),
                  Text(
                    '中国工商银行',
                    style: TextStyle(
                        color: Color(0xff292E33),
                        fontSize: Util.calc(12, context)),
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              margin: EdgeInsets.symmetric(vertical: Util.calc(16, context)),
              color: Color(0xffF2F2F2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '最高额度',
                      style: TextStyle(
                        color: Color(0xffB6BBBF),
                        fontSize: Util.calc(12, context),
                      ),
                    ),
                    SizedBox(height: Util.calc(4, context)),
                    RichText(
                      text: TextSpan(
                          text: '${index + 1}00',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: Util.calc(24, context),
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: ' 万元',
                              style: TextStyle(
                                height: 1,
                                color: kPrimaryColor,
                                fontSize: Util.calc(12, context),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: Util.calc(12, context),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '参考利率：',
                        style: TextStyle(
                            fontSize: Util.calc(12, context),
                            color: Color(0xff737980)),
                        children: const [
                          TextSpan(
                            text: '4.5%',
                            style: TextStyle(
                              color: Color(0xff292E33),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: Util.calc(88, context),
                    height: Util.calc(40, context),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '立即申请',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Util.calc(12, context),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

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
