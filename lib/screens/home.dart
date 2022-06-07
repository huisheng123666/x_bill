import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:x_bill/components/home/block_item.dart';
import 'package:x_bill/components/home/home_data.dart';
import 'package:x_bill/components/home/home_news.dart';
import 'package:x_bill/components/home/product_item.dart';
import 'package:x_bill/screens/personal/goods_detail.dart';
import 'package:x_bill/util.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: Util.calc(308, context),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  'assets/home/title.webp',
                  width: Util.screenWidth(context),
                  height: Util.calc(220, context),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: Util.calc(197, context),
                  child: const HomeData(),
                )
              ],
            ),
          ),
          SizedBox(
            height: Util.calc(16, context),
          ),
          SizedBox(
            height: Util.calc(169, context),
            child: Swiper(
              itemCount: 3,
              viewportFraction: 0.936,
              itemBuilder: (context, index) => ProductItem(
                index: index,
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => GoodsDetail(),
                  ));
                },
              ),
            ),
          ),
          SizedBox(
            height: Util.calc(16, context),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: Util.calc(16, context)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BlockItem(
                        title: '创业担保贷',
                        subTitle: '小微企业版',
                        iconPath: 'assets/home/block1@2x.png',
                        onTab: () {},
                      ),
                      BlockItem(
                        title: '农合联会员贷',
                        subTitle: '农村普惠金融\n助力乡村振兴',
                        iconPath: 'assets/home/block2@2x.png',
                        onTab: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BlockItem(
                        title: '工行房抵贷',
                        subTitle: '贷动精彩生活\n助力幸福人生',
                        iconPath: 'assets/home/block3@2x.png',
                        onTab: () {},
                      ),
                      BlockItem(
                        title: '企贷通',
                        subTitle: '一键发布需求\n银行在线抢单',
                        iconPath: 'assets/home/block4@2x.png',
                        onTab: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const HomeNews()
        ],
      ),
    );
  }
}
