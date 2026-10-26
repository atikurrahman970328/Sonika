import 'package:flutter/material.dart';

class ServerStatusBadge extends StatelessWidget {
  final String status; // 'active', 'idle', 'paused'

  const ServerStatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    Color color;
    String text;

    switch (status) {
      case 'active':
        color = Colors.green;
        text = 'সক্রিয় (Active)';
        break;
      case 'idle':
        color = Colors.amber;
        text = 'নিষ্ক্রিয় (Idle)';
        break;
      default:
        color = Colors.red;
        text = 'পজ করা (Paused)';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color),
      ),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}
