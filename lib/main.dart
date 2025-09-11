import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

import 'routing/app_router.dart';

// Simple Riverpod providers (example)
final dateStringProvider = Provider<String>((ref) {
  return DateFormat.yMMMd().format(DateTime.now());
});

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

// Hive (local storage)
  await Hive.initFlutter();
  await Hive.openBox('app');

// Google Mobile Ads (no Ad widgets yet — just initialization stub)
  await MobileAds.instance.initialize();

// In‑app purchase instance (no flows yet — just a reference to ensure the plugin links)
// ignore: unused_local_variable
  final iap = InAppPurchase.instance;

  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Courses & Settings',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7C4DFF),
          brightness: Brightness.dark,
        ),
      ),
      routerConfig: appRouter,
    );
  }
}
