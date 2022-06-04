import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_bill/components/common_nav.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/screens/my/enterprise_detail.dart';
import 'package:x_bill/util.dart';

class EnterpriseBind extends StatefulWidget {
  const EnterpriseBind({super.key});

  @override
  State<StatefulWidget> createState() {
    return _EnterpriseBind();
  }
}

class _EnterpriseBind extends State<EnterpriseBind>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: CommonNav.generator(context, '企业绑定'),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: Util.calc(16, context)),
          itemBuilder: (BuildContext context, int index) => EnterpriseItem(
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => EnterpriseDetail(),
              ));
            },
          ),
          itemCount: 10,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class EnterpriseItem extends StatelessWidget {
  final VoidCallback onTap;

  const EnterpriseItem({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(Util.calc(16, context)),
        margin: EdgeInsets.only(top: Util.calc(16, context)),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/my/enterprise_bg@2x.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(Util.calc(8, context)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  size: Util.calc(16, context),
                  color: Color(0xff14CC8F),
                ),
                SizedBox(width: Util.calc(4, context)),
                Text(
                  '已绑定',
                  style: TextStyle(
                    color: Color(0xff737980),
                    fontSize: Util.calc(12, context),
                  ),
                ),
              ],
            ),
            SizedBox(height: Util.calc(26, context)),
            Text(
              '湖北三峡金融科技有限公司',
              style: TextStyle(
                color: kContentColorDarkTheme,
                fontSize: Util.calc(16, context),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: Util.calc(12, context)),
            Text(
              '44785WEW8725W65425',
              style: TextStyle(
                color: Color(0xff737980),
                fontSize: Util.calc(12, context),
              ),
            ),
            SizedBox(height: Util.calc(37, context)),
            Text(
              '绑定时间：2021-08-06 10:43:35',
              style: TextStyle(
                color: Color(0xffB6BBBF),
                fontSize: Util.calc(12, context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
