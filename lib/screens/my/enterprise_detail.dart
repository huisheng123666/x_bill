import 'package:flutter/material.dart';
import 'package:x_bill/components/common_nav.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

class EnterpriseDetail extends StatelessWidget {
  const EnterpriseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonNav.generator(context, '企业详情'),
      body: Container(
        width: Util.screenWidth(context),
        padding: EdgeInsets.symmetric(horizontal: Util.calc(16, context)),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Util.calc(24, context)),
            Image.asset(
              'assets/my/verify_pass@2x.png',
              width: Util.calc(80, context),
              height: Util.calc(80, context),
            ),
            SizedBox(height: Util.calc(16, context)),
            Text(
              '审核通过',
              style: TextStyle(
                color: kContentColorDarkTheme,
                fontSize: Util.calc(16, context),
                fontWeight: FontWeight.w500,
              ),
            ),
            _infoItem(context, '企业名称', '湖北三峡金融科技有限公司'),
            _infoItem(context, '统一社会信用代码', '44785WEW8725W65425'),
            _infoItem(context, '绑定时间', '2021-08-06 10:43:35'),
          ],
        ),
      ),
    );
  }

  Container _infoItem(BuildContext context, String label, String value) {
    return Container(
      margin: EdgeInsets.only(top: Util.calc(40, context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Color(0xff737980),
              fontSize: Util.calc(14, context),
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Color(0xff292E33),
              fontSize: Util.calc(14, context),
            ),
          )
        ],
      ),
    );
  }
}
