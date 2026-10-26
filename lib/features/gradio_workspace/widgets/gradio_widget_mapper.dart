import 'package:flutter/material.dart';

class GradioWidgetMapper extends StatelessWidget {
  final String componentType; // 'slider', 'textbox', 'dropdown'
  final String label;
  final Function(dynamic) onChanged;

  const GradioWidgetMapper({
    super.key,
    required this.componentType,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    switch (componentType) {
      case 'slider':
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(color: Colors.white70)),
              Slider(
                value: 0.5,
                onChanged: onChanged,
                activeColor: Colors.amberAccent,
              ),
            ],
          ),
        );
      case 'textbox':
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: onChanged,
            decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(color: Colors.white70),
              filled: true,
              fillColor: Colors.grey[900],
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
            style: const TextStyle(color: Colors.white),
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
