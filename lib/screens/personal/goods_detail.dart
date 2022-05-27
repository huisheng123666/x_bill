import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:x_bill/components/nav_bar.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/screens/personal/personal.dart';
import 'package:x_bill/util.dart';

class GoodsDetail extends StatelessWidget {
  const GoodsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    Util.setStatusBarTextColor(SystemUiOverlayStyle.light);

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

    return Scaffold(
      backgroundColor: Color(0xffF5F6F7),
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
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  left: Util.calc(16, context),
                  right: Util.calc(16, context),
                  bottom: Util.calc(54, context),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      NavBar(
                        title: '快e贷',
                        onBack: () {
                          Navigator.of(context).pop();
                        },
                      ),
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
                        onTab: () {},
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
                    ),
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
