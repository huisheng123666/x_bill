import 'package:flutter/material.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

class Safety extends StatelessWidget {
  const Safety({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '账号与安全',
          style: TextStyle(
            color: kContentColorDarkTheme,
            fontSize: Util.calc(16, context),
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            const SfaetyItem(
              label: '手机号',
              value: '13488886699',
              statusText: '去修改',
            ),
            const SfaetyItem(
              label: '微信号',
              value: '未绑定微信号',
              statusText: '去绑定',
            ),
            const SfaetyItem(
              label: '个人实名认证',
              value: '保障帐号的安全',
              statusText: '已认证',
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Util.calc(16, context)),
              height: Util.calc(60, context),
              decoration: BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(
                      width: Util.calc(8, context), color: Color(0xffF5F6F7)),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    '企业绑定',
                    style: TextStyle(
                      fontSize: Util.calc(14, context),
                      color: kContentColorDarkTheme,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '已绑定1个',
                    style: TextStyle(
                      fontSize: Util.calc(12, context),
                      color: const Color(0xffB6BBBF),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: Util.calc(20, context),
                    color: const Color(0xffB6BBBF),
                  )
                ],
              ),
            ),
            const SfaetyItem(
              label: '永久注销帐号',
              value: '操作后帐号信息无法恢复，请谨慎操作',
              statusText: '',
            ),
          ],
        ),
      ),
    );
  }
}

class SfaetyItem extends StatelessWidget {
  final String label;
  final String value;
  final String statusText;

  const SfaetyItem({
    Key? key,
    required this.label,
    required this.value,
    required this.statusText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Util.calc(16, context)),
      height: Util.calc(66, context),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Color(0xffF2F4F5)))),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: Util.calc(14, context),
                  color: kContentColorDarkTheme,
                ),
              ),
              SizedBox(height: Util.calc(8, context)),
              Text(
                value,
                style: TextStyle(
                  fontSize: Util.calc(12, context),
                  color: const Color(0xffB6BBBF),
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            statusText,
            style: TextStyle(
              fontSize: Util.calc(12, context),
              color: const Color(0xffB6BBBF),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right,
            size: Util.calc(20, context),
            color: const Color(0xffB6BBBF),
          )
        ],
      ),
    );
  }
}
