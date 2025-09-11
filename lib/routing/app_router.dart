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
        child: const CoursesScreen(),
      ),
      routes: [
        GoRoute(
          path: 'settings',
          name: 'settings',
          pageBuilder: (context, state) => MaterialPage(
            child: const SettingsScreen(),
          ),
        ),
      ],
    ),
  ],
);


