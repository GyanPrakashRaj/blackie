import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FMWebView extends StatefulWidget {
  @override
  _FMWebView createState() => _FMWebView();
}

class _FMWebView extends State<FMWebView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: SafeArea(
        child: Row(
          children: <Widget>[
            Container(
              width: 300,
              height: 800,
              child: WebView(
                javascriptChannels: {
                  JavascriptChannel(
                    name: 'Print',
                    onMessageReceived: (JavascriptMessage message) {
                      print('333333333333333333');
                      print(message.message);
                    },
                  ),
                },
                initialUrl:
                    'https://www.baidu.com/',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController controller) async {
                  print((await controller.currentUrl()).toString());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
