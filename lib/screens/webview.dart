import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:x_bill/components/common_nav.dart';

class HybridPage extends StatefulWidget {
  final String title;
  final String url;

  const HybridPage({super.key, required this.title, required this.url});

  @override
  State<StatefulWidget> createState() {
    return _HybridPage();
  }
}

class _HybridPage extends State<HybridPage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonNav.generator(context, widget.title),
      body: WebView(
        initialUrl: widget.url,
      ),
    );
  }
}
