import 'dart:convert';
import 'package:http/http.dart' as http;

class GradioApiBridge {
  static Future<Map<String, dynamic>> callGradioPredict(String spaceUrl, List<dynamic> inputs) async {
    try {
      final response = await http.post(
        Uri.parse('$spaceUrl/api/predict'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'data': inputs}),
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to call Gradio API: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Gradio API Bridge Error: $e');
    }
  }
}
