import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/screens/my/my_loan.dart';
import 'package:x_bill/screens/my/my_open.dart';
import 'package:x_bill/screens/my/safety.dart';
import 'package:x_bill/util.dart';

class My extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _My();
  }
}

class _My extends State<My> {
  @override
  Widget build(BuildContext context) {
    Util.setStatusBarTextColor(SystemUiOverlayStyle.dark);
    return Scaffold(
        body: Container(
      width: Util.screenWidth(context),
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/my/my_bg@2x.png'),
          alignment: Alignment.topCenter,
          fit: BoxFit.contain,
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: Util.calc(24, context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Util.screenWidth(context),
                      child: Text(
                        '个人中心',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: kContentColorDarkTheme,
                          fontSize: Util.calc(16, context),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: Util.calc(37, context)),
                    Text(
                      'xmw',
                      style: TextStyle(
                        color: kContentColorDarkTheme,
                        fontSize: Util.calc(24, context),
                      ),
                    ),
                    SizedBox(
                      height: Util.calc(12, context),
                    ),
                    Row(
                      children: [
                        Container(
                          height: Util.calc(24, context),
                          padding: EdgeInsets.symmetric(
                              horizontal: Util.calc(13, context)),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(Util.calc(12, context)),
                          ),
                          child: Text(
                            '18812345678',
                            style: TextStyle(
                              color: Color(0xffB6BBBF),
                              fontSize: Util.calc(12, context),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: Util.calc(8, context)),
                          height: Util.calc(24, context),
                          padding: EdgeInsets.symmetric(
                              horizontal: Util.calc(13, context)),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(Util.calc(12, context)),
                          ),
                          child: Row(
                            children: [
                              Text(
                                '未认证',
                                style: TextStyle(
                                  color: Color(0xffFF8C19),
                                  fontSize: Util.calc(12, context),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: Util.calc(16, context),
                                color: Color(0xffB6BBBF),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: Util.calc(50, context)),
                    LinkItem(
                      icon: 'assets/my/icon1@2x.png',
                      name: '我的贷款',
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => MyLoan(),
                        ));
                      },
                    ),
                    LinkItem(
                      icon: 'assets/my/icon2@2x.png',
                      name: '我的开户',
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => MyOpen(),
                        ));
                      },
                    ),
                    LinkItem(
                      icon: 'assets/my/icon3@2x.png',
                      name: '账号与安全',
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => Safety(),
                        ));
                      },
                    ),
                    LinkItem(
                      icon: 'assets/my/icon4@2x.png',
                      name: '关于我们',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: Util.calc(16, context),
              left: Util.calc(147, context),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: '客服电话\n',
                    style: TextStyle(
                      height: 1.5,
                      color: Color(0xff9EA2A6),
                      fontSize: Util.calc(12, context),
                    ),
                    children: const [
                      TextSpan(
                        text: '0717-6256760',
                        style: TextStyle(
                          color: Color(0xff0073E6),
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class LinkItem extends StatelessWidget {
  final String icon;
  final String name;
  final VoidCallback onTap;

  const LinkItem({
    Key? key,
    required this.icon,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Util.calc(48, context),
        padding: EdgeInsets.symmetric(horizontal: Util.calc(16, context)),
        margin: EdgeInsets.only(bottom: Util.calc(16, context)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            Util.calc(4, context),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: Util.calc(20, context),
              height: Util.calc(20, context),
            ),
            SizedBox(width: Util.calc(8, context)),
            Text(
              name,
              style: TextStyle(
                  color: kContentColorDarkTheme,
                  fontSize: Util.calc(12, context)),
            ),
            Spacer(flex: 1),
            Icon(
              Icons.keyboard_arrow_right,
              size: Util.calc(25, context),
              color: Color(0xffB6BBBF),
            )
          ],
        ),
      ),
    );
  }
}
