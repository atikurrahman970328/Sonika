import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/runtime_stats_model.dart';

class CloudApiService {
  static Future<RuntimeStatsModel> fetchRuntimeStats(String apiUrl, String token) async {
    try {
      // রিমোট সার্ভার বা হাগিং ফেস/কোলাব এপিআই থেকে টেলিমেট্রি ডাটা ফেচ করার সিমুলেশন
      await Future.delayed(const Duration(milliseconds: 800));
      
      // ডামি রিয়েল-টাইম ডাটা রিটার্ন করা হচ্ছে
      return RuntimeStatsModel(
        serverId: 'active_server_01',
        cpuUsage: 45.5,
        ramUsage: 68.2,
        gpuUsage: 89.0,
        status: 'active',
      );
    } catch (e) {
      throw Exception('Failed to fetch runtime stats: $e');
    }
  }

  static Future<bool> pingServer(String apiUrl) async {
    try {
      final response = await http.get(Uri.parse(apiUrl)).timeout(const Duration(seconds: 5));
      return response.statusCode == 200;
    } catch (_) {
      return false;
    }
  }
}
