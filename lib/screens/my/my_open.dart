import 'package:flutter/material.dart';
import 'package:x_bill/components/common_nav.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

class MyOpen extends StatefulWidget {
  const MyOpen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyOpen();
  }
}

class _MyOpen extends State<MyOpen> {
  @override
  Widget build(BuildContext context) {
    var infoTextStyle = TextStyle(
      color: Color(0xff919599),
      fontSize: Util.calc(12, context),
    );

    return Scaffold(
      backgroundColor: Color(0xffF5F6F7),
      appBar: CommonNav.generator(context, '我的开户'),
      body: ListView.builder(
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: Util.calc(16, context)),
          padding: EdgeInsets.all(Util.calc(24, context)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Util.calc(4, context)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/personal/ccb@2x.png',
                    width: Util.calc(16, context),
                    height: Util.calc(16, context),
                  ),
                  SizedBox(
                    width: Util.calc(4, context),
                  ),
                  Text(
                    '中国工商银行',
                    style: TextStyle(
                      color: kContentColorDarkTheme,
                      fontSize: Util.calc(12, context),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '申请时间：2021.08.11 16:25:15',
                    style: TextStyle(
                      color: Color(0xff9EA2A6),
                      fontSize: Util.calc(12, context),
                    ),
                  ),
                ],
              ),
              Container(
                height: 1,
                color: Color(0xffF0F1F2),
                margin: EdgeInsets.only(top: Util.calc(16, context)),
              ),
              Padding(
                padding: EdgeInsets.only(top: Util.calc(16, context)),
                child: Text('企业名称：XXXXX有限公司', style: infoTextStyle),
              ),
              Padding(
                padding: EdgeInsets.only(top: Util.calc(16, context)),
                child: Text('法定代表人：xmw', style: infoTextStyle),
              ),
              Padding(
                padding: EdgeInsets.only(top: Util.calc(16, context)),
                child: Text('贷款人身份证号：420***********66**', style: infoTextStyle),
              ),
              Padding(
                padding: EdgeInsets.only(top: Util.calc(16, context)),
                child: Text('手机号：139****0961', style: infoTextStyle),
              ),
              Padding(
                padding: EdgeInsets.only(top: Util.calc(16, context)),
                child: Text('开户状态：详情请咨询银行网点', style: infoTextStyle),
              ),
            ],
          ),
        ),
        itemCount: 10,
        padding: EdgeInsets.all(Util.calc(16, context)),
      ),
    );
  }
}
