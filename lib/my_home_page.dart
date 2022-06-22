

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_webview_project/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WebView Experiment"),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
            url: Uri.parse('http://localhost:8080/lib/arcgis_webview.html')),
      ),
    );
  }


  @override
  void dispose() {
    localhostServer.close();
    super.dispose();
  }
}
