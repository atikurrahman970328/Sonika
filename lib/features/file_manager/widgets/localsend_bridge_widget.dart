import 'package:flutter/material.dart';

class LocalsendBridgeWidget extends StatelessWidget {
  const LocalsendBridgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.tealAccent.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Row(
            children: [
              Icon(Icons.wifi_tethering, color: Colors.tealAccent),
              SizedBox(width: 8),
              Text('লোকালসেন্ড ওয়্যারলেস ব্রিজ', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 12),
          const Text('মোবাইল ডিভাইস থেকে সরাসরি ক্লাউড সার্ভারে ফাইল বা ডেটাসেট ট্রান্সফার করুন:', style: TextStyle(color: Colors.white70, fontSize: 13)),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('লোকালসেন্ড সার্ভার স্ক্যান করা হচ্ছে...')),
              );
            },
            icon: const Icon(Icons.radar),
            label: const Text('নিয়ারবাই ডিভাইস স্ক্যান করুন'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, padding: const EdgeInsets.symmetric(vertical: 12)),
          ),
        ],
      ),
    );
  }
}
