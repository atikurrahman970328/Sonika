import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/gradio_controller.dart';

class GradioHubScreen extends ConsumerWidget {
  const GradioHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apps = ref.watch(gradioControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('গ্রাডিও এআই হাব'),
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: apps.length,
        itemBuilder: (context, index) {
          final app = apps[index];
          return Card(
            color: Colors.grey[900],
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.hub, color: Colors.amberAccent),
              title: Text(app.title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              subtitle: Text(app.description, style: const TextStyle(color: Colors.white70)),
              trailing: IconButton(
                icon: Icon(
                  app.isFavorite ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                ),
                onPressed: () {
                  ref.read(gradioControllerProvider.notifier).toggleFavorite(app.id);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
