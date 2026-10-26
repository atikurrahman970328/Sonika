import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/cloud_controller.dart';

class CloudDashboardScreen extends ConsumerWidget {
  const CloudDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providers = ref.watch(cloudControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('মাল্টি-ক্লাউড ড্যাশবোর্ড'),
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: providers.length,
        itemBuilder: (context, index) {
          final provider = providers[index];
          return Card(
            color: Colors.grey[900],
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(
                Icons.cloud,
                color: provider.isConnected ? Colors.greenAccent : Colors.redAccent,
              ),
              title: Text(provider.name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              subtitle: Text('স্ট্যাটাস: ${provider.isConnected ? "যুক্ত আছে" : "সংযোগ বিচ্ছিন্ন"}', style: const TextStyle(color: Colors.white70)),
              trailing: Switch(
                value: provider.isConnected,
                onChanged: (val) {
                  ref.read(cloudControllerProvider.notifier).updateConnectionStatus(provider.id, val);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
