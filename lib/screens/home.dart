import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:x_bill/screens/bill.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
}

class _Home extends State<Home> {
  int currentTab = 0;

  List<Widget> tabPages = [
    Bill(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0xFFf4f7f4),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFf4f7f4),
      body: tabPages[currentTab],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 1) return;
          setState(() {
            currentTab = index;
          });
        },
        currentIndex: currentTab,
        selectedItemColor: const Color(0xFF77aa89),
        unselectedItemColor: const Color(0xFFbbcac5),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: '账本'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.ac_unit_sharp,
                size: 20,
              ),
              label: '记一笔'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '我的',
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF77aa89),
        elevation: 1,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
