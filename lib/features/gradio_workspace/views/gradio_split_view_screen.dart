import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GradioSplitViewScreen extends StatelessWidget {
  final String title1;
  final String url1;
  final String title2;
  final String url2;

  const GradioSplitViewScreen({
    super.key,
    required this.title1,
    required this.url1,
    required this.title2,
    required this.url2,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('স্প্লিট-স্ক্রিন এআই কম্পারিজন'),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade800)),
              child: WebViewWidget(
                controller: WebViewController()
                  ..setJavaScriptMode(JavaScriptMode.unrestricted)
                  ..loadRequest(Uri.parse(url1)),
              ),
            ),
          ),
          const Divider(height: 2, color: Colors.amberAccent),
          Expanded(
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade800)),
              child: WebViewWidget(
                controller: WebViewController()
                  ..setJavaScriptMode(JavaScriptMode.unrestricted)
                  ..loadRequest(Uri.parse(url2)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
