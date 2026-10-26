import 'package:flutter/material.dart';
import '../models/community_space_model.dart';

class PublicSpaceExplorerScreen extends StatelessWidget {
  const PublicSpaceExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CommunitySpaceModel> spaces = [
      CommunitySpaceModel(id: '1', title: 'Advanced RAG Pipeline', author: 'Developer A', spaceUrl: '...', likesCount: 342),
      CommunitySpaceModel(id: '2', title: 'Real-time Voice Dubbing Studio', author: 'Developer B', spaceUrl: '...', likesCount: 512),
      CommunitySpaceModel(id: '3', title: 'LLM Fine-tuning Dashboard', author: 'Developer C', spaceUrl: '...', likesCount: 189),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('পাবলিক এআই স্পেস এক্সপ্লোরার'),
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: spaces.length,
        itemBuilder: (context, index) {
          final space = spaces[index];
          return Card(
            color: Colors.grey[900],
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.explore, color: Colors.tealAccent),
              title: Text(space.title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              subtitle: Text('লেখক: ${space.author} | লাইক: ${space.likesCount}', style: const TextStyle(color: Colors.white70, fontSize: 12)),
              trailing: IconButton(
                icon: const Icon(Icons.play_arrow, color: Colors.greenAccent),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${space.title} স্পেস ওপেন করা হচ্ছে...')),
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
