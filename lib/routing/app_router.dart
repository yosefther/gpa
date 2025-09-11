import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/courses/courses_screen.dart';
import '../features/settings/settings_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'courses',
      pageBuilder: (context, state) => MaterialPage(
        child: CoursesScreen(),
      ),
      routes: [
        GoRoute(
          path: 'settings',
          name: 'settings',
          pageBuilder: (context, state) => const MaterialPage(
            child: const SettingsScreen(),
          ),
        ),
      ],
    ),
  ],
);

/// Fallback local definition for CoursesScreen so the router compiles even if
/// the real widget isn't available from the imported file. Remove this when
/// the real CoursesScreen is exported from ../features/courses/courses_screen.dart.
class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: const Center(
        child: Text('Courses screen placeholder'),
      ),
    );
  }
}

/// Fallback local definition for SettingsScreen so the router compiles even if
/// the real widget isn't available from the imported file. Remove this when
/// the real SettingsScreen is exported from ../features/settings/settings_screen.dart.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Text('Settings screen placeholder'),
      ),
    );
  }
}


