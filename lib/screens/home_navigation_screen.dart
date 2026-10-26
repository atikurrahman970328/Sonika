// ==========================================
// FILE: lib/screens/home_navigation_screen.dart
// ==========================================

import 'package:flutter/material.dart';
import '../features/cloud_manager/views/cloud_dashboard_screen.dart';
import '../features/gradio_workspace/views/gradio_hub_screen.dart';
import '../features/code_editor/views/code_editor_screen.dart';
import '../features/file_manager/views/cloud_file_explorer_screen.dart';

class HomeNavigationScreen extends StatefulWidget {
  const HomeNavigationScreen({super.key});

  @override
  State<HomeNavigationScreen> createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const CloudDashboardScreen(),
    const GradioHubScreen(),
    const CodeEditorScreen(),
    const CloudFileExplorerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.tealAccent,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'ক্লাউড'),
          BottomNavigationBarItem(icon: Icon(Icons.hub), label: 'গ্রাডিও'),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'এডিটর'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'ফাইল'),
        ],
      ),
    );
  }
}