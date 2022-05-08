
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class CustomWebView extends StatelessWidget {
  final _webView = FlutterWebviewPlugin();
final String url;
final String appBar;

   CustomWebView({Key? key, required this.url, required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    _webView.onUrlChanged.listen((String url) async {
      print(Uri.encodeFull(url));
      if(url=="https://gridgamers.com/"){
        await _webView.close();
        Navigator.of(context).pop();
      }
    });
    return SafeArea(
      child: WebviewScaffold(
        url: Uri.encodeFull(url),
        appBar: AppBar(title:  Text(appBar),backgroundColor: const Color(0xff1b2838),),
      ),
    );
  }
}