import 'package:flutter/material.dart';

class GitVersionControlScreen extends StatelessWidget {
  const GitVersionControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('গিট ভার্সন কন্ট্রোল হাব'),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('রিমোট গিটহাব রিপোজিটরি ম্যানেজমেন্ট:', style: TextStyle(color: Colors.white70, fontSize: 16)),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('গিট কমিট ও পুশ সফলভাবে সম্পন্ন হয়েছে!')),
                );
              },
              icon: const Icon(Icons.cloud_upload),
              label: const Text('কোড কমিট ও পুশ করুন'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 14)),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('রিপোজিটরি সফলভাবে ক্লোন করা হয়েছে!')),
                );
              },
              icon: const Icon(Icons.download, color: Colors.tealAccent),
              label: const Text('রিপোজিটরি ক্লোন করুন', style: TextStyle(color: Colors.tealAccent)),
              style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.tealAccent)),
            ),
          ],
        ),
      ),
    );
  }
}
