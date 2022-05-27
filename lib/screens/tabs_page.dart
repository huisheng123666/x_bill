import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:x_bill/constants.dart';
import 'package:x_bill/screens/home.dart';
import 'package:x_bill/screens/my/my.dart';
import 'package:x_bill/screens/personal/personal.dart';
import 'package:x_bill/util.dart';

class TabsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabsPage();
  }
}

class _TabsPage extends State<TabsPage> with AutomaticKeepAliveClientMixin {
  int currentTab = 0;

  List<Widget> tabPages = [
    const Home(),
    Container(),
    const Persoanl(),
    My(),
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    Util.setStatusBarTextColor(SystemUiOverlayStyle.light);

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F7),
      body: IndexedStack(
        index: currentTab,
        children: tabPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        onTap: (index) {
          setState(() {
            currentTab = index;
          });
        },
        currentIndex: currentTab,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: const Color(0xFF9EA2A6),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/tabs/home@2x.png',
              width: 20,
              height: 20,
            ),
            activeIcon: Image.asset(
              'assets/tabs/home_active@2x.png',
              width: 20,
              height: 20,
            ),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/tabs/enterprise@2x.png',
              width: 20,
              height: 20,
            ),
            activeIcon: Image.asset(
              'assets/tabs/enterprise_active@2x.png',
              width: 20,
              height: 20,
            ),
            label: '企业贷',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/tabs/personal@2x.png',
              width: 20,
              height: 20,
            ),
            activeIcon: Image.asset(
              'assets/tabs/personal_active@2x.png',
              width: 20,
              height: 20,
            ),
            label: '个人贷',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/tabs/my@2x.png',
              width: 20,
              height: 20,
            ),
            activeIcon: Image.asset(
              'assets/tabs/my_active@2x.png',
              width: 20,
              height: 20,
            ),
            label: '我的',
          ),
        ],
      ),
    );
  }
}
