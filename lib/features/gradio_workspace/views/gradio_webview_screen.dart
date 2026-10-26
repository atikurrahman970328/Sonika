import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GradioWebviewScreen extends StatefulWidget {
  final String appTitle;
  final String appUrl;

  const GradioWebviewScreen({super.key, required this.appTitle, required this.appUrl});

  @override
  State<GradioWebviewScreen> createState() => _GradioWebviewScreenState();
}

class _GradioWebviewScreenState extends State<GradioWebviewScreen> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            setState(() {
              _isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.appUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appTitle),
        backgroundColor: Colors.black87,
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(color: Colors.amberAccent),
            ),
        ],
      ),
    );
  }
}
