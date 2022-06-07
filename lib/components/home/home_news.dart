import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_bill/components/new_item.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/screens/news.dart';
import 'package:x_bill/screens/webview.dart';
import 'package:x_bill/util.dart';

const List<String> tabs = ['政策资讯', '金融资讯', '平台资讯'];

class HomeNews extends StatefulWidget {
  const HomeNews({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeNews();
  }
}

class _HomeNews extends State<HomeNews> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Util.calc(16, context)),
      padding: EdgeInsets.all(Util.calc(16, context)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          Util.calc(8, context),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '新闻资讯',
                style: TextStyle(
                  height: 1.1,
                  color: kContentColorDarkTheme,
                  fontSize: Util.calc(16, context),
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => News(),
                  ));
                },
                child: Container(
                  width: Util.calc(40, context),
                  height: Util.calc(20, context),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffF0F1F2),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    '更多',
                    style: TextStyle(
                      color: Color(0xff737980),
                      fontSize: Util.calc(10, context),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Util.calc(14, context)),
          Row(children: _genNewsTabs()),
          NewsItem(
            title: '从十九届五中全会公报看十四五期间五大产业政策主线从十九届五中全会公报看十四五期间五大产业政策主线',
            tag: '华尔街见闻',
            date: '2021-08-12',
            cover:
                'https://img2.baidu.com/it/u=2864883089,1070642727&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => const HybridPage(
                    title: '新闻详情',
                    url:
                        'https://3g.163.com/dy/article/H98UCSHI051283GO.html?spss=adap_pc',
                  ),
                ),
              );
            },
          ),
          NewsItem(
            title: '从十九届五中全会公报看十四五期间五大产业政策主线从十九届五中全会公报看十四五期间五大产业政策主线',
            tag: '华尔街见闻',
            date: '2021-08-12',
            cover:
                'https://img2.baidu.com/it/u=2864883089,1070642727&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => const HybridPage(
                    title: '新闻详情',
                    url:
                        'https://3g.163.com/dy/article/H98UCSHI051283GO.html?spss=adap_pc',
                  ),
                ),
              );
            },
          ),
          NewsItem(
            title: '从十九届五中全会公报看十四五期间五大产业政策主线从十九届五中全会公报看十四五期间五大产业政策主线',
            tag: '华尔街见闻',
            date: '2021-08-12',
            cover:
                'https://img2.baidu.com/it/u=2864883089,1070642727&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => const HybridPage(
                    title: '新闻详情',
                    url:
                        'https://3g.163.com/dy/article/H98UCSHI051283GO.html?spss=adap_pc',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  _genNewsTabs() {
    List<Widget> newsTabs = [];
    for (var i = 0; i < tabs.length; i++) {
      newsTabs.add(NewsTab(
        name: tabs[i],
        onTab: () {
          setState(() {
            activeIndex = i;
          });
        },
        activeIndex: activeIndex,
        index: i,
      ));
    }

    return newsTabs;
  }
}

class NewsTab extends StatelessWidget {
  final String name;
  final VoidCallback onTab;
  final int activeIndex;
  final int index;

  const NewsTab({
    Key? key,
    required this.name,
    required this.onTab,
    required this.activeIndex,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: EdgeInsets.only(right: Util.calc(10, context)),
        alignment: Alignment.center,
        width: Util.calc(80, context),
        height: Util.calc(32, context),
        decoration: BoxDecoration(
          color: index == activeIndex ? Color(0xffFFE6E7) : Color(0xffF5F6F7),
          borderRadius: BorderRadius.circular(Util.calc(16, context)),
        ),
        child: Text(
          name,
          style: TextStyle(
            color: index == activeIndex ? kPrimaryColor : Color(0xff737980),
            fontSize: Util.calc(12, context),
          ),
        ),
      ),
    );
  }
}
