
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class GithubWebView extends StatefulWidget {
  const GithubWebView({super.key, required this.url});
  final String url;

  @override
  State<GithubWebView> createState() => _GithubWebViewState();
}

class _GithubWebViewState extends State<GithubWebView> {
  double _progress = 0;
  // late InAppWebViewController  _webViewController;
  final _webViewController = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled)
  ..loadRequest(Uri.parse('https://github.com/Habeeb-marcus'))
  ..setNavigationDelegate(
    NavigationDelegate(
      onPageStarted: (url) {
       CircularProgressIndicator();
      },
    ));
  GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ScaffoldKey,
      appBar: AppBar(
        title: Text("GitHub Profile", style: TextStyle(color: Color(0xffad9c00))),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              LinearProgressIndicator(
                value: _progress,
                backgroundColor: Color(0xffad9c00),
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xffad9c00)),
              ),
              Expanded(
                child:   WebViewWidget(controller: _webViewController),
              ),
            ],
          ),
       

        ],
      ),
    );
  }
}

