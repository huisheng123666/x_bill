import 'package:flutter/material.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

class LoanDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.2,
        title: Text(
          '贷款详情',
          style: TextStyle(
            color: kContentColorDarkTheme,
            fontSize: Util.calc(16, context),
            fontWeight: FontWeight.w500,
          ),
        ),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(Util.calc(24, context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SubTitle(title: '贷款信息', icon: Icons.article_outlined),
                const InfoItem(label: '贷款产品', value: '网捷贷 - 中国农业银行三峡分行'),
                const InfoItem(label: '申请时间', value: '2021-08-11 16:25:15'),
                const InfoItem(label: '贷款状态', value: '已授信'),
                const InfoItem(
                  label: '授信额度',
                  value: '280,000元',
                  valueColor: Color(0xffE61727),
                ),
                SizedBox(height: Util.calc(40, context)),
                const SubTitle(title: '申请信息', icon: Icons.article_outlined),
                Padding(
                  padding: EdgeInsets.only(top: Util.calc(16, context)),
                  child: Text(
                    '申请人基本信息',
                    style: TextStyle(
                      color: kContentColorDarkTheme,
                      fontWeight: FontWeight.w500,
                      fontSize: Util.calc(12, context),
                    ),
                  ),
                ),
                const InfoItem(label: '姓名', value: 'xmw'),
                const InfoItem(label: '身份证号', value: '420***********66**'),
                const InfoItem(label: '手机号', value: '13986820961'),
                Padding(
                  padding: EdgeInsets.only(top: Util.calc(24, context)),
                  child: Text(
                    '紧急联系人信息',
                    style: TextStyle(
                      color: kContentColorDarkTheme,
                      fontWeight: FontWeight.w500,
                      fontSize: Util.calc(12, context),
                    ),
                  ),
                ),
                const InfoItem(label: '姓名', value: 'hf'),
                const InfoItem(label: '身份证号', value: '420***********66**'),
                const InfoItem(label: '与申请人关系', value: '同事'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;

  const InfoItem({
    Key? key,
    required this.label,
    required this.value,
    this.valueColor = const Color(0xff737980),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Util.calc(24, context)),
      child: Row(
        children: [
          SizedBox(
            width: Util.calc(102, context),
            child: Text(
              label,
              style: TextStyle(
                color: const Color(0xffB6BBBF),
                fontSize: Util.calc(14, context),
              ),
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: valueColor,
              fontSize: Util.calc(14, context),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  final String title;
  final IconData? icon;

  const SubTitle({
    Key? key,
    required this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: Util.calc(16, context)),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Color(0xffF2F2F2)))),
      child: Row(
        children: [
          icon != null
              ? Icon(Icons.article_outlined, size: Util.calc(16, context))
              : const SizedBox(width: 0, height: 0),
          SizedBox(width: Util.calc(4, context)),
          Text(
            title,
            style: TextStyle(
              color: kContentColorDarkTheme,
              fontWeight: FontWeight.w500,
              fontSize: Util.calc(14, context),
            ),
          )
        ],
      ),
    );
  }
}
