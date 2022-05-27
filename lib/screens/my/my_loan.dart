import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/screens/my/loan_detail.dart';
import 'package:x_bill/util.dart';

class MyLoan extends StatefulWidget {
  const MyLoan({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyLoan();
  }
}

class _MyLoan extends State<MyLoan> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '我的贷款',
          style: TextStyle(
            color: kContentColorDarkTheme,
            fontSize: Util.calc(16, context),
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.3,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            size: Util.calc(24, context),
            color: kContentColorDarkTheme,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => LoanItem(
          index: index,
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(
              builder: (context) => LoanDetail(),
            ));
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class LoanItem extends StatelessWidget {
  final int index;
  final VoidCallback onTap;

  const LoanItem({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          top: Util.calc(16, context),
          left: Util.calc(16, context),
          right: Util.calc(16, context),
        ),
        padding: EdgeInsets.all(Util.calc(24, context)),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  index % 2 == 0 ? Icons.access_time_filled : Icons.cancel,
                  color: index % 2 == 0 ? Color(0xff0073E6) : Color(0xffE61727),
                  size: Util.calc(16, context),
                ),
                SizedBox(width: Util.calc(4, context)),
                Text(
                  index % 2 == 0 ? '待授信' : '授信拒绝',
                  style: TextStyle(
                    color: kContentColorDarkTheme,
                    fontSize: Util.calc(16, context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  '申请时间：2021.08.11 16:25:15',
                  style: TextStyle(
                    color: Color(0xff9EA2A6),
                    fontSize: Util.calc(12, context),
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              color: Color(0xffF0F1F2),
              margin: EdgeInsets.symmetric(vertical: Util.calc(16, context)),
            ),
            Text(
              '网捷贷 - 中国农业银行三峡分行',
              style: TextStyle(
                height: 1,
                color: kContentColorDarkTheme,
                fontSize: Util.calc(12, context),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: Util.calc(16, context)),
            Text(
              '贷款申请者：杨一',
              style: TextStyle(
                color: Color(0xff737980),
                fontSize: Util.calc(12, context),
              ),
            ),
            SizedBox(height: Util.calc(16, context)),
            Text(
              '贷款人身份证号：420***********66**',
              style: TextStyle(
                color: Color(0xff737980),
                fontSize: Util.calc(12, context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
