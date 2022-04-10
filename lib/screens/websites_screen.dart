import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebsitesScreen extends StatefulWidget {
  const WebsitesScreen({Key? key}) : super(key: key);

  @override
  _WebsitesScreenState createState() => _WebsitesScreenState();
}

class _WebsitesScreenState extends State<WebsitesScreen> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    final parameters = ModalRoute.of(context)!.settings.arguments as Map;
    String title = parameters["title"];
    String link = parameters["link"];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(title),
          centerTitle: true,
          actions: [
            // WebviewNavigation(_controller.future),
          ],
        ),
        body: WebView(
          initialUrl: link,
          javascriptMode: JavascriptMode.unrestricted,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {},
          child: Icon(Icons.refresh),
        ));
  }
}
