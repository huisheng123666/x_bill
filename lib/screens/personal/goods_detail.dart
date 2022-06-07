import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:x_bill/components/common_nav.dart';
import 'package:x_bill/components/nav_bar.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/screens/my/loan_detail.dart';
import 'package:x_bill/screens/personal/personal.dart';
import 'package:x_bill/screens/webview.dart';
import 'package:x_bill/util.dart';

class GoodsDetail extends StatefulWidget {
  const GoodsDetail({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GoodsDetail();
  }
}

class _GoodsDetail extends State<GoodsDetail> {
  bool showLayer = false;

  int totalSeconds = 10;

  late Timer timer;

  @override
  void initState() {
    super.initState();
    Util.setStatusBarTextColor(SystemUiOverlayStyle.light);
  }

  @override
  Widget build(BuildContext context) {
    var subTitleStyle = TextStyle(
      height: 1,
      fontSize: Util.calc(14, context),
      color: kContentColorDarkTheme,
      fontWeight: FontWeight.w500,
    );

    var contentTextStyle = TextStyle(
      height: 1.5,
      fontSize: Util.calc(12, context),
      color: Color(0xff737980),
      fontWeight: FontWeight.w500,
    );

    return Stack(
      children: [
        Scaffold(
          backgroundColor: const Color(0xffF5F6F7),
          appBar: CommonNav.generator(
              context, '快e贷', Colors.white, Color(0xffE61727), 0),
          body: Container(
            width: Util.screenWidth(context),
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffE61727),
                  Color(0xffFF9966),
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                ],
                stops: [0, .29, .2901, .6, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  left: Util.calc(16, context),
                  right: Util.calc(16, context),
                  bottom: Util.calc(54, context),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: Util.calc(8, context)),
                      GoodsItem(
                        goods: Goods(
                          name: '快e贷',
                          img: 'assets/personal/ccb@2x.png',
                          total: '300',
                          rate: '4.35%',
                          deadline: '12个月',
                          tag: '质押担保',
                        ),
                        onTab: _openLayer,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(Util.calc(24, context)),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('放款对象', style: subTitleStyle),
                            SizedBox(height: Util.calc(16, context)),
                            Text(
                              '个人消费者',
                              style: contentTextStyle,
                            ),
                            SizedBox(height: Util.calc(24, context)),
                            Text('贷款用途', style: subTitleStyle),
                            SizedBox(height: Util.calc(16, context)),
                            Text(
                              '经营贷款',
                              style: contentTextStyle,
                            ),
                            SizedBox(height: Util.calc(24, context)),
                            Text('申请条件', style: subTitleStyle),
                            SizedBox(height: Util.calc(16, context)),
                            Text(
                              '1、借款人与配偶(若有)乙方拥有宜昌市辖内户籍或在宜昌市辖内工作、生产经营或生活；2、具备中华人民共和国国籍，具备完全民事行为能力；3、信用记录良好；4、满足行内本产品的其他准入要求。',
                              style: contentTextStyle,
                            ),
                            SizedBox(height: Util.calc(24, context)),
                            Text('申请材料', style: subTitleStyle),
                            SizedBox(height: Util.calc(16, context)),
                            Text(
                              '需填写信息：\n贷款申请人姓名，贷款申请人手机号，贷款申请人身份证号\n需上传资料\n贷款申请人身份证正面，贷款申请人身份证反面，贷款申请人手持身份证照片',
                              style: contentTextStyle,
                            ),
                            SizedBox(height: Util.calc(24, context)),
                            Text('贷款步骤', style: subTitleStyle),
                            SizedBox(height: Util.calc(16, context)),
                            Steps(),
                          ],
                        ),
                      ),
                      SizedBox(height: Util.calc(16, context)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: Util.screenWidth(context),
            padding: EdgeInsets.only(
              left: Util.calc(16, context),
              right: Util.calc(16, context),
              top: Util.calc(10, context),
              bottom: Util.bottomSafeHeight(context),
            ),
            color: Colors.white,
            child: GestureDetector(
              onTap: _openLayer,
              child: Container(
                height: Util.calc(44, context),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '立即申请',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Util.calc(14, context),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ),
        ),
        showLayer ? _buildAuthPop() : const SizedBox(),
      ],
    );
  }

  _openLayer() {
    setState(() {
      showLayer = true;
      totalSeconds = 10;
      _countDown();
    });
  }

  _countDown() {
    if (totalSeconds != 0) {
      timer = Timer(const Duration(seconds: 1), () {
        setState(() {
          totalSeconds--;
          _countDown();
        });
      });
    }
  }

  _buildAuthPop() {
    return Positioned(
      left: 0,
      top: 0,
      bottom: 0,
      child: Container(
        width: Util.screenWidth(context),
        color: const Color.fromRGBO(0, 0, 0, 0.4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Util.calc(279, context),
              padding: EdgeInsets.all(Util.calc(24, context)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  Util.calc(8, context),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    '用户授权',
                    style: TextStyle(
                      height: 1,
                      color: kContentColorDarkTheme,
                      fontSize: Util.calc(16, context),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: Util.calc(24, context)),
                  RichText(
                    text: TextSpan(
                      text: '本系统为金融机构提供线上贷款服务，需要您阅读并同意',
                      style: TextStyle(
                        height: 1.5,
                        color: kContentColorDarkTheme,
                        fontSize: Util.calc(12, context),
                        decoration: TextDecoration.none,
                      ),
                      children: [
                        TextSpan(
                          text: '《个人信息查询授权书》',
                          style: const TextStyle(
                            color: Color(0xff0073E6),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = (() {
                              timer.cancel();
                              setState(() {
                                totalSeconds = 0;
                              });
                              Navigator.of(context).push(CupertinoPageRoute(
                                builder: (context) => const HybridPage(
                                  title: '个人信息查询授权书',
                                  url: 'https://flutter.cn',
                                ),
                              ));
                            }),
                        ),
                        const TextSpan(
                          text:
                              '并签约后，金融机构才能对您的个人信息进行收集使用。如不同意，金融机构将无法为您提供线上贷款服务。',
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (totalSeconds != 0) return;
                      timer.cancel();
                      Navigator.of(context).push(
                        CupertinoPageRoute(builder: (context) => LoanDetail()),
                      );
                      setState(() {
                        showLayer = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: Util.calc(32, context)),
                      alignment: Alignment.center,
                      height: Util.calc(40, context),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(
                            230, 23, 39, totalSeconds == 0 ? 1 : 0.5),
                        borderRadius: BorderRadius.circular(
                          Util.calc(4, context),
                        ),
                      ),
                      child: Text(
                        '${totalSeconds != 0 ? '(${totalSeconds}s)' : ''}同意授权',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Util.calc(14, context),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: Util.calc(24, context)),
            GestureDetector(
              onTap: () {
                setState(() {
                  showLayer = false;
                  timer.cancel();
                });
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Steps extends StatelessWidget {
  const Steps({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var stepTextStyle = TextStyle(
      height: 1,
      color: kContentColorDarkTheme,
      fontSize: Util.calc(12, context),
      fontWeight: FontWeight.w500,
    );

    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: Util.calc(7, context)),
              alignment: Alignment.center,
              width: Util.calc(24, context),
              height: Util.calc(24, context),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Util.calc(12, context),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Util.calc(10, context)),
              width: Util.calc(40, context),
              height: 1,
              color: Color(0xffF0F1F2),
            ),
            Container(
              alignment: Alignment.center,
              width: Util.calc(24, context),
              height: Util.calc(24, context),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Util.calc(12, context),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Util.calc(10, context)),
              width: Util.calc(40, context),
              height: 1,
              color: Color(0xffF0F1F2),
            ),
            Container(
              alignment: Alignment.center,
              width: Util.calc(24, context),
              height: Util.calc(24, context),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Util.calc(12, context),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Util.calc(10, context)),
              width: Util.calc(40, context),
              height: 1,
              color: Color(0xffF0F1F2),
            ),
            Container(
              alignment: Alignment.center,
              width: Util.calc(24, context),
              height: Util.calc(24, context),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '4',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Util.calc(12, context),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: Util.calc(12, context)),
        Row(
          children: [
            SizedBox(width: Util.calc(7, context)),
            SizedBox(
              width: Util.calc(26, context),
              child: Text('申请', style: stepTextStyle),
            ),
            SizedBox(width: Util.calc(50, context)),
            SizedBox(
              width: Util.calc(50, context),
              child: Text('受理准入', style: stepTextStyle),
            ),
            SizedBox(width: Util.calc(37, context)),
            SizedBox(
              width: Util.calc(38, context),
              child: Text('预授信', style: stepTextStyle),
            ),
            SizedBox(width: Util.calc(51, context)),
            SizedBox(
              width: Util.calc(26, context),
              child: Text('签约', style: stepTextStyle),
            ),
          ],
        )
      ],
    );
  }
}
