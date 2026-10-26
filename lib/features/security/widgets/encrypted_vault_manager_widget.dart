import 'package:flutter/material.dart';

class EncryptedVaultManagerWidget extends StatelessWidget {
  const EncryptedVaultManagerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.deepPurpleAccent.withOpacity(0.4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Row(
            children: [
              Icon(Icons.lock, color: Colors.deepPurpleAccent),
              SizedBox(width: 8),
              Text('সিকিউর ক্রেডেনশিয়াল ভল্ট', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 12),
          const Text('আপনার সমস্ত ক্লাউড এপিআই কি, পাসওয়ার্ড এবং এসএসএইচ কী সুরক্ষিতভাবে এনক্রিপ্ট করা আছে।', style: TextStyle(color: Colors.white70, fontSize: 13)),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('এনক্রিপ্টেড ভল্ট অডিট সফল হয়েছে!')),
              );
            },
            icon: const Icon(Icons.security),
            label: const Text('ভল্ট সিকিউরিটি অডিট করুন'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 12)),
          ),
        ],
      ),
    );
  }
}
