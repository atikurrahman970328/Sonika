// ==========================================
// FILE: lib/app.dart
// ==========================================

import 'package:flutter/material.dart';
import 'omni_main_router.dart';
import 'screens/home_navigation_screen.dart';

class OmniSuperApp extends StatelessWidget {
  const OmniSuperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Omni AI Orchestrator IDE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.tealAccent,
        colorScheme: const ColorScheme.dark(
          primary: Colors.tealAccent,
          secondary: Colors.amberAccent,
        ),
      ),
      home: const HomeNavigationScreen(),
      onGenerateRoute: OmniMainRouter.onGenerateRoute,
    );
  }
}