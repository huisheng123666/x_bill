import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:x_bill/components/common_nav.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/screens/my/enterprise_bind.dart';
import 'package:x_bill/screens/my/verify.dart';
import 'package:x_bill/util.dart';

class Safety extends StatelessWidget {
  const Safety({super.key});

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);

    return Scaffold(
      appBar: CommonNav.generator(context, '账号与安全'),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SfaetyItem(
              label: '手机号',
              value: '13488886699',
              statusText: '去修改',
              onTap: () {},
            ),
            SfaetyItem(
              label: '微信号',
              value: '未绑定微信号',
              statusText: '去绑',
              onTap: () {
                Toast.show('绑不了，老6', duration: 2, gravity: Toast.center);
              },
            ),
            SfaetyItem(
              label: '个人实名认证',
              value: '保障帐号的安全',
              statusText: '已认证',
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => Verify(),
                ));
              },
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => EnterpriseBind(),
                ));
              },
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: Util.calc(16, context)),
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
            ),
            SfaetyItem(
              label: '永久注销帐号',
              value: '操作后帐号信息无法恢复，请谨慎操作',
              statusText: '',
              onTap: () {
                Toast.show('想啥美事了，来了就别想走', duration: 2, gravity: Toast.center);
              },
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
  final VoidCallback onTap;

  const SfaetyItem({
    Key? key,
    required this.label,
    required this.value,
    required this.statusText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
