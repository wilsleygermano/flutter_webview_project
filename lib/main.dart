import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_webview_project/web_view_app.dart';

InAppLocalhostServer localhostServer = InAppLocalhostServer();

void main() async {
  runApp(const WebViewApp());
    WidgetsFlutterBinding.ensureInitialized();
  await localhostServer.start();
}

