import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_webview_project/main.dart';

class MapPage extends StatefulWidget {
  const MapPage({ Key? key }) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
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