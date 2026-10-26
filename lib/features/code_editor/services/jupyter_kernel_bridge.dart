import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';

class JupyterKernelBridge {
  WebSocketChannel? _channel;

  void connectKernel(String wsUrl) {
    try {
      _channel = WebSocketChannel.connect(Uri.parse(wsUrl));
    } catch (e) {
      throw Exception('Failed to connect to Jupyter Kernel: $e');
    }
  }

  void executeCode(String codeSnippet) {
    if (_channel != null) {
      final payload = jsonEncode({
        'action': 'execute',
        'code': codeSnippet,
      });
      _channel!.sink.add(payload);
    }
  }

  void disconnect() {
    _channel?.sink.close();
  }
}
