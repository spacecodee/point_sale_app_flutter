import 'dart:io';

import 'package:flutter/material.dart';
import 'package:point_sale_app/src/ui/layouts/auth/auth_layout.dart';
import 'package:point_sale_app/src/utils/app_colors.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    // Use it only after calling `hiddenWindowAtLaunch`
    await _windowManagerOnlyDesktop();
  }

  runApp(const MyApp());
}

Future<void> _windowManagerOnlyDesktop() async {
  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.ensureInitialized();
    // Hide window title bar
    await windowManager.setMinimumSize(const Size(400, 600));
    await windowManager.setSize(const Size(1200, 800));
    await windowManager.center();
    await windowManager.show();
    await windowManager.setSkipTaskbar(false);
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WindowListener {
  @override
  void initState() {
    super.initState();
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      windowManager.addListener(this);
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      windowManager.removeListener(this);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = ThemeData();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const AuthLoginLayout(),
      theme: _theme.copyWith(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.authBackgroundColor2,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.primaryColor,
          selectionColor: AppColors.primaryColor,
          selectionHandleColor: AppColors.primaryColor,
        ),
        colorScheme: _theme.colorScheme.copyWith(
          secondary: AppColors.primaryColor,
        ),
      ),
    );
  }
}
