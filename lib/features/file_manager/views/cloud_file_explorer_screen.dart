import 'package:flutter/material.dart';
import '../models/cloud_file_model.dart';

class CloudFileExplorerScreen extends StatelessWidget {
  const CloudFileExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ডামি ফাইল লিস্ট
    final List<CloudFileModel> files = [
      CloudFileModel(name: 'datasets', path: '/workspace/datasets', isDirectory: true, size: '4.2 GB', lastModified: '2026-10-25'),
      CloudFileModel(name: 'models', path: '/workspace/models', isDirectory: true, size: '1.8 GB', lastModified: '2026-10-24'),
      CloudFileModel(name: 'train.py', path: '/workspace/train.py', isDirectory: false, size: '15 KB', lastModified: '2026-10-25'),
      CloudFileModel(name: 'requirements.txt', path: '/workspace/requirements.txt', isDirectory: false, size: '1.2 KB', lastModified: '2026-10-20'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ক্লাউড ফাইল এক্সপ্লোরার'),
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: files.length,
        itemBuilder: (context, index) {
          final file = files[index];
          return Card(
            color: Colors.grey[900],
            margin: const EdgeInsets.only(bottom: 8),
            child: ListTile(
              leading: Icon(
                file.isDirectory ? Icons.folder : Icons.insert_drive_file,
                color: file.isDirectory ? Colors.amberAccent : Colors.tealAccent,
              ),
              title: Text(file.name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              subtitle: Text('সাইজ: ${file.size} | মডিফাই: ${file.lastModified}', style: const TextStyle(color: Colors.white70, fontSize: 12)),
              trailing: IconButton(
                icon: const Icon(Icons.download, color: Colors.white60),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${file.name} ডাউনলোড শুরু হয়েছে...')),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
