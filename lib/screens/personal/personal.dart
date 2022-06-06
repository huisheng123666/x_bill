import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/util.dart';

import 'goods_detail.dart';

class Persoanl extends StatefulWidget {
  const Persoanl({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Personal();
  }
}

class Goods {
  final String name;
  final String img;
  final String total;
  final String rate;
  final String deadline;
  final String tag;

  Goods(
      {required this.name,
      required this.img,
      required this.total,
      required this.rate,
      required this.deadline,
      required this.tag});
}

class _Personal extends State<Persoanl> {
  List<Goods> goodes = [];

  @override
  void initState() {
    super.initState();
    for (var i = 1; i < 20; i++) {
      goodes.add(
        Goods(
          name: '快e贷',
          img: 'assets/personal/ccb@2x.png',
          total: (i * 30).toString(),
          rate: '${i % 3}%',
          deadline: '${i * 12}个月',
          tag: '质押担保',
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '个人贷',
          style: TextStyle(
            color: kContentColorDarkTheme,
            fontSize: Util.calc(16, context),
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.2,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => GoodsItem(
          goods: goodes[index],
          onTab: () {
            Navigator.of(context).push(CupertinoPageRoute(
              builder: (context) => GoodsDetail(),
            ));
          },
        ),
        itemCount: goodes.length,
        padding: EdgeInsets.all(Util.calc(16, context)),
      ),
    );
  }
}

class GoodsItem extends StatelessWidget {
  final Goods goods;
  final VoidCallback onTab;

  const GoodsItem({
    Key? key,
    required this.goods,
    required this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Util.calc(24, context)),
      margin: EdgeInsets.only(bottom: Util.calc(16, context)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Util.calc(8, context)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                goods.name,
                style: TextStyle(
                  height: 1.1,
                  color: kContentColorDarkTheme,
                  fontSize: Util.calc(16, context),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: Util.calc(4, context)),
                height: Util.calc(16, context),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: Util.calc(3, context),
                ),
                decoration: BoxDecoration(
                  color: Color(0xffE6F2FF),
                  borderRadius: BorderRadius.circular(
                    Util.calc(4, context),
                  ),
                ),
                child: Text(
                  goods.tag,
                  style: TextStyle(
                    color: Color(0xff0073E6),
                    fontSize: Util.calc(10, context),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Image.asset(
                goods.img,
                width: Util.calc(16, context),
                height: Util.calc(16, context),
              ),
              SizedBox(width: Util.calc(4, context)),
              Text(
                '中国建设银行',
                style: TextStyle(
                  color: kContentColorDarkTheme,
                  fontSize: Util.calc(12, context),
                ),
              )
            ],
          ),
          Container(
            height: 1,
            margin: EdgeInsets.symmetric(vertical: Util.calc(16, context)),
            color: Color(0xffF2F2F2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '最高额度',
                    style: TextStyle(
                      height: 1,
                      color: Color(0xffB6BBBF),
                      fontSize: Util.calc(12, context),
                    ),
                  ),
                  SizedBox(height: Util.calc(8, context)),
                  RichText(
                    text: TextSpan(
                      text: goods.total,
                      style: TextStyle(
                        height: 1,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: Util.calc(24, context),
                      ),
                      children: [
                        TextSpan(
                          text: ' 万元',
                          style: TextStyle(
                            height: 1,
                            fontSize: Util.calc(12, context),
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: onTab,
                child: Container(
                  alignment: Alignment.center,
                  width: Util.calc(80, context),
                  height: Util.calc(32, context),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(
                      Util.calc(4, context),
                    ),
                  ),
                  child: Text(
                    '立即申请',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: Util.calc(12, context),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: Util.calc(16, context)),
          Row(
            children: [
              Container(
                width: Util.calc(146, context),
                margin: EdgeInsets.only(right: Util.calc(24, context)),
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      width: 1,
                      color: Color(0xffD8D8D8),
                    ),
                  ),
                ),
                child: RichText(
                  text: TextSpan(
                      text: '参考利率：',
                      style: TextStyle(
                        color: Color(0xff737980),
                        fontSize: Util.calc(12, context),
                      ),
                      children: [
                        TextSpan(
                          text: goods.rate,
                          style: TextStyle(color: kContentColorDarkTheme),
                        )
                      ]),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '贷款期限：',
                  style: TextStyle(
                    color: Color(0xff737980),
                    fontSize: Util.calc(12, context),
                  ),
                  children: [
                    TextSpan(
                      text: goods.deadline,
                      style: TextStyle(color: kContentColorDarkTheme),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 1,
            margin: EdgeInsets.symmetric(vertical: Util.calc(16, context)),
            color: Color(0xffF2F2F2),
          ),
          Text(
            '无需抵押 无需担保  |  用时起息 额度循环',
            style: TextStyle(
                color: Color(0xff5588A3), fontSize: Util.calc(10, context)),
          )
        ],
      ),
    );
  }
}
