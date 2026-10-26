import 'package:flutter/material.dart';
import '../models/runtime_stats_model.dart';

class HardwareTelemetryWidget extends StatelessWidget {
  final RuntimeStatsModel stats;

  const HardwareTelemetryWidget({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('হার্ডওয়্যার টেলিমেট্রি মনিটর', style: TextStyle(color: Colors.tealAccent, fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          _buildUsageBar('CPU Usage', stats.cpuUsage, Colors.blue),
          const SizedBox(height: 8),
          _buildUsageBar('RAM Usage', stats.ramUsage, Colors.orange),
          const SizedBox(height: 8),
          _buildUsageBar('GPU Usage', stats.gpuUsage, Colors.purple),
        ],
      ),
    );
  }

  Widget _buildUsageBar(String label, double percentage, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: const TextStyle(color: Colors.white70)),
            Text('${percentage.toStringAsFixed(1)}%', style: const TextStyle(color: Colors.white)),
          ],
        ),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: percentage / 100,
          backgroundColor: Colors.grey[700],
          color: color,
        ),
      ],
    );
  }
}
