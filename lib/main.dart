import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF292928),
      body: SafeArea(
        child: WebView(
          initialUrl: 'http://env-samplepowerfuel.eba-hppy27ka.us-west-2.elasticbeanstalk.com/fs-admin',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController powerfuel){
            _controller = powerfuel;
          },
        ),
      ),
    );
}
}
