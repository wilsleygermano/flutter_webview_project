
import 'package:flutter/material.dart';
import 'package:flutter_webview_project/my_home_page.dart';

class WebViewApp extends StatelessWidget {
  const WebViewApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
    );
  }
}
