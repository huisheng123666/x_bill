import 'package:flutter/material.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

class ProductItem extends StatelessWidget {
  final int index;
  final VoidCallback onTap;

  const ProductItem({Key? key, required this.index, required this.onTap})
      : super(key: key);

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
                  onTap: onTap,
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
