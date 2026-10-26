// ==========================================
// FILE: lib/omni_main_router.dart
// ==========================================

import 'package:flutter/material.dart';
import 'features/cloud_manager/views/cloud_dashboard_screen.dart';
import 'features/gradio_workspace/views/gradio_hub_screen.dart';
import 'features/code_editor/views/code_editor_screen.dart';
import 'features/file_manager/views/cloud_file_explorer_screen.dart';
import 'features/security/views/security_settings_screen.dart';
import 'features/community/views/public_space_explorer_screen.dart';

class OmniMainRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/cloud':
        return MaterialPageRoute(builder: (_) => const CloudDashboardScreen());
      case '/gradio':
        return MaterialPageRoute(builder: (_) => const GradioHubScreen());
      case '/editor':
        return MaterialPageRoute(builder: (_) => const CodeEditorScreen());
      case '/files':
        return MaterialPageRoute(builder: (_) => const CloudFileExplorerScreen());
      case '/security':
        return MaterialPageRoute(builder: (_) => const SecuritySettingsScreen());
      case '/community':
        return MaterialPageRoute(builder: (_) => const PublicSpaceExplorerScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('Omni AI IDE')),
            body: const Center(
              child: Text('স্বাগতম! সঠিক রাউট নির্বাচন করুন।', style: TextStyle(color: Colors.white70)),
            ),
          ),
        );
    }
  }
}