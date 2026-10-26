import 'package:flutter/material.dart';

class VariableExplorerWidget extends StatelessWidget {
  final Map<String, String> variables; // Variable name and its type/value

  const VariableExplorerWidget({super.key, required this.variables});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade800),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('পাইথন ভেরিয়েবল এক্সপ্লোরার', style: TextStyle(color: Colors.amberAccent, fontWeight: FontWeight.bold)),
          const Divider(color: Colors.grey),
          variables.isEmpty
              ? const Text('কোনো সক্রিয় ভেরিয়েবল নেই', style: TextStyle(color: Colors.white54))
              : ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: variables.length,
                  itemBuilder: (context, index) {
                    String key = variables.keys.elementAt(index);
                    String val = variables[key]!;
                    return ListTile(
                      dense: true,
                      title: Text(key, style: const TextStyle(color: Colors.white, fontFamily: 'monospace')),
                      trailing: Text(val, style: const TextStyle(color: Colors.greenAccent, fontFamily: 'monospace')),
                    );
                  },
                ),
        ],
      ),
    );
  }
}
