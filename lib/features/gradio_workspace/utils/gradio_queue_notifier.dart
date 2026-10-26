import 'package:flutter/material.dart';

class GradioQueueNotifier {
  static void showQueueStatus(BuildContext context, int queuePosition) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('এআই প্রসেসিং কিউ পজিশন: #$queuePosition'),
        backgroundColor: Colors.deepPurple,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  static void showCompletionNotification(BuildContext context, String modelName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('সফল! $modelName থেকে প্রসেসিং সম্পন্ন হয়েছে।'),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 4),
      ),
    );
  }
}
