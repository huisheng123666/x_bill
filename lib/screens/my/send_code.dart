import 'package:flutter/material.dart';
import 'package:x_bill/components/common_nav.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

class SendCode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SendCode();
  }
}

class _SendCode extends State<SendCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonNav.generator(context, ''),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(Util.calc(40, context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '输入验证码',
              style: TextStyle(
                color: kContentColorDarkTheme,
                fontSize: Util.calc(24, context),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: Util.calc(16, context)),
            RichText(
              text: TextSpan(
                  text: '短信验证码已发送至 ',
                  style: TextStyle(
                    color: Color(0xffB6BBBF),
                    fontSize: Util.calc(12, context),
                  ),
                  children: const [
                    TextSpan(
                        text: '13488996699',
                        style: TextStyle(
                          color: kContentColorDarkTheme,
                        ))
                  ]),
            ),
            SizedBox(height: Util.calc(50, context)),
            TextField(
              maxLength: 6,
              keyboardType: TextInputType.number,
              showCursor: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: '',
              ),
              style: TextStyle(
                  letterSpacing: Util.calc(36, context),
                  fontSize: Util.calc(16, context)),
            ),
            Row(
              children: [
                Container(
                  width: Util.calc(32, context),
                  height: 1,
                  color: Color(0xffF0F1F2),
                  margin: EdgeInsets.only(left: Util.calc(6, context)),
                ),
                Container(
                  width: Util.calc(32, context),
                  height: 1,
                  color: Color(0xffF0F1F2),
                  margin: EdgeInsets.only(left: Util.calc(15, context)),
                ),
                Container(
                  width: Util.calc(32, context),
                  height: 1,
                  color: Color(0xffF0F1F2),
                  margin: EdgeInsets.only(left: Util.calc(15, context)),
                ),
                Container(
                  width: Util.calc(32, context),
                  height: 1,
                  color: Color(0xffF0F1F2),
                  margin: EdgeInsets.only(left: Util.calc(15, context)),
                ),
                Container(
                  width: Util.calc(32, context),
                  height: 1,
                  color: Color(0xffF0F1F2),
                  margin: EdgeInsets.only(left: Util.calc(15, context)),
                ),
                Container(
                  width: Util.calc(32, context),
                  height: 1,
                  color: Color(0xffF0F1F2),
                  margin: EdgeInsets.only(left: Util.calc(15, context)),
                )
              ],
            ),
            SizedBox(height: Util.calc(40, context)),
            Text(
              '46s后可重新获取',
              style: TextStyle(
                color: Color(0xffB6BBBF),
                fontSize: Util.calc(12, context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
