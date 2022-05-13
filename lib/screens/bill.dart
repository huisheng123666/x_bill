import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Bill();
  }
}

class _Bill extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'HI，早上好!',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: const [
              Text(
                '2022年05月13日',
                style: TextStyle(
                  color: Color(0xff878787),
                  fontSize: 13,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.sunny,
                color: Color(0xfffcbf40),
                size: 18,
              ),
              Text(
                '晴',
                style: TextStyle(
                  color: Color(0xff878787),
                  fontSize: 13,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
