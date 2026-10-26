// ==========================================
// FILE: lib/features/code_editor/views/code_editor_screen.dart
// ==========================================

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/code_editor_controller.dart';

class CodeEditorScreen extends ConsumerWidget {
  const CodeEditorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cells = ref.watch(codeEditorControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('এডভান্সড কোড এডিটর ও নোটবুক'),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.greenAccent),
            onPressed: () => ref.read(codeEditorControllerProvider.notifier).addCell('code'),
            tooltip: 'কোড সেল যোগ করুন',
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: cells.length,
        itemBuilder: (context, index) {
          final cell = cells[index];
          return Card(
            color: Colors.grey[900],
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // সঠিক প্রপার্টি 'spaceBetween' এখানে ঠিক করে দেওয়া হয়েছে
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'সেল #${index + 1} (${cell.cellType.toUpperCase()})',
                        style: const TextStyle(color: Colors.amberAccent, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.redAccent, size: 20),
                        onPressed: () => ref.read(codeEditorControllerProvider.notifier).removeCell(cell.id),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: TextEditingController(text: cell.content)
                      ..selection = TextSelection.fromPosition(TextPosition(offset: cell.content.length)),
                    onChanged: (val) => ref.read(codeEditorControllerProvider.notifier).updateCellContent(cell.id, val),
                    maxLines: null,
                    style: const TextStyle(color: Colors.white, fontFamily: 'monospace'),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black45,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}