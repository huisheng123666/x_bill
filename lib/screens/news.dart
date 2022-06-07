import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_bill/components/new_item.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/screens/webview.dart';
import 'package:x_bill/util.dart';

class News extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _News();
  }
}

class _News extends State<News> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '新闻资讯',
          style: TextStyle(
            color: kContentColorDarkTheme,
            fontSize: Util.calc(16, context),
            fontWeight: FontWeight.w500,
          ),
        ),
        iconTheme: IconThemeData(
          color: kContentColorDarkTheme,
          size: Util.calc(16, context),
        ),
        elevation: 0.2,
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Text('政策资讯'),
            Text('金融资讯'),
            Text('平台资讯'),
          ],
          labelColor: kContentColorDarkTheme,
          unselectedLabelColor: Color(0xff737980),
          labelStyle: TextStyle(
              fontWeight: FontWeight.w500, fontSize: Util.calc(14, context)),
          unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w400, fontSize: Util.calc(14, context)),
          labelPadding: EdgeInsets.only(bottom: Util.calc(8, context)),
          indicatorColor: kPrimaryColor,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: Util.calc(3, context),
        ),
      ),
      backgroundColor: Colors.white,
      body: TabBarView(
        controller: tabController,
        children: [
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: Util.calc(16, context)),
            itemCount: 10,
            itemBuilder: (context, index) => NewsItem(
              title: '从十九届五中全会公报看十四五期间五大产业政策主线从十九届五中全会公报看十四五期间五大产业政策主线',
              tag: '华尔街见闻',
              date: '2021-08-12',
              cover:
                  'https://img2.baidu.com/it/u=2864883089,1070642727&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => const HybridPage(
                        title: '新闻详情',
                        url:
                            'https://3g.163.com/dy/article/H98UCSHI051283GO.html?spss=adap_pc')));
              },
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: Util.calc(16, context)),
            itemCount: 10,
            itemBuilder: (context, index) => NewsItem(
              title: '从十九届五中全会公报看十四五期间五大产业政策主线从十九届五中全会公报看十四五期间五大产业政策主线',
              tag: '华尔街见闻',
              date: '2021-08-12',
              cover:
                  'https://img2.baidu.com/it/u=2864883089,1070642727&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => const HybridPage(
                        title: '新闻详情',
                        url:
                            'https://3g.163.com/dy/article/H98UCSHI051283GO.html?spss=adap_pc')));
              },
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: Util.calc(16, context)),
            itemCount: 10,
            itemBuilder: (context, index) => NewsItem(
              title: '从十九届五中全会公报看十四五期间五大产业政策主线从十九届五中全会公报看十四五期间五大产业政策主线',
              tag: '华尔街见闻',
              date: '2021-08-12',
              cover:
                  'https://img2.baidu.com/it/u=2864883089,1070642727&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => const HybridPage(
                        title: '新闻详情',
                        url:
                            'https://3g.163.com/dy/article/H98UCSHI051283GO.html?spss=adap_pc')));
              },
            ),
          ),
        ],
      ),
    );
  }
}
