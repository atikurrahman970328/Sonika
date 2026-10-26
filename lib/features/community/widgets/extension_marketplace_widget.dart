import 'package:flutter/material.dart';

class ExtensionMarketplaceWidget extends StatelessWidget {
  const ExtensionMarketplaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.amberAccent.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Row(
            children: [
              Icon(Icons.extension, color: Colors.amberAccent),
              SizedBox(width: 8),
              Text('প্লাগইন ও এক্সটেনশন মার্কেটপ্লেস', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 12),
          const Text('আপনার আইডিই-এর কার্যক্ষমতা বাড়াতে থার্ড-পার্টি প্লাগইন ও থিম ইনস্টল করুন।', style: TextStyle(color: Colors.white70, fontSize: 13)),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('মার্কেটপ্লেস ব্রাউজ করা হচ্ছে...')),
              );
            },
            icon: const Icon(Icons.store),
            label: const Text('প্লাগইন স্টোর খুলুন'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber.shade800, padding: const EdgeInsets.symmetric(vertical: 12)),
          ),
        ],
      ),
    );
  }
}
