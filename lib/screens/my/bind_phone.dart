import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_bill/components/common_nav.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/screens/my/send_code.dart';
import 'package:x_bill/util.dart';

class BindPhone extends StatelessWidget {
  const BindPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonNav.generator(context, '绑定手机号'),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: Util.screenWidth(context),
        child: Column(
          children: [
            SizedBox(height: Util.calc(32, context)),
            Image.asset(
              'assets/my/phone@2x.png',
              width: Util.calc(80, context),
              height: Util.calc(80, context),
            ),
            SizedBox(height: Util.calc(26, context)),
            Text(
              '当前手机号',
              style: TextStyle(
                color: Color(0xff858A9C),
                fontSize: Util.calc(12, context),
              ),
            ),
            SizedBox(height: Util.calc(12, context)),
            Text(
              '13888886699',
              style: TextStyle(
                color: kContentColorDarkTheme,
                fontSize: Util.calc(16, context),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: Util.calc(32, context)),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) => SendCode()));
              },
              child: Container(
                width: Util.calc(311, context),
                height: Util.calc(44, context),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(
                    Util.calc(8, context),
                  ),
                ),
                child: Text(
                  '更换手机号',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Util.calc(14, context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
