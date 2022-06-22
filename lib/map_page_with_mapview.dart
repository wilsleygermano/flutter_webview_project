
import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart'; 

class MapPageWithMapView extends StatefulWidget {
  const MapPageWithMapView({
    Key? key,
  }) : super(key: key);

  @override
  State<MapPageWithMapView> createState() => _MapPageWithMapViewState();
}

class _MapPageWithMapViewState extends State<MapPageWithMapView> {
 
  // String myHtml = 'lib/arcgis_webview.html';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WebView Experiment"),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 1,
          child: WebViewPlus(
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) {
              controller.loadUrl('lib/arcgis_webview.html');
            }
          ),
        ),
      )
    );
  }

  


}



