# wireframe_theme

A small Flutter theme package extracted from an app, intended to be reused as a starting point across multiple projects.

Includes:
- `WireframeTheme` (ThemeData builder for light/dark)
- `ThemeController` (persisted dark mode toggle via SharedPreferences)

## Install

Add this package to your app via Git dependency:

```yaml
dependencies:
  wireframe_theme:
    git:
      url: https://github.com/<YOUR_GITHUB_USERNAME>/wireframe_theme.git
      ref: v1.0.0

Then run:

flutter pub get

    Tip: Use a tag (v1.0.0) instead of main to keep new apps stable.

Usage
1) Setup ThemeController in main.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wireframe_theme/wireframe_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Use a unique key per app to avoid collisions between multiple apps.
  final theme = ThemeController(storageKey: 'my_app_isDarkMode');
  await theme.init();

  runApp(
    ChangeNotifierProvider.value(
      value: theme,
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeController>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: WireframeTheme.getTheme(false),
      darkTheme: WireframeTheme.getTheme(true),
      themeMode: theme.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: const Scaffold(
        body: Center(child: Text('Hello')),
      ),
    );
  }
}

2) Toggle theme from anywhere

context.read<ThemeController>().toggle();

File structure

lib/
  wireframe_theme.dart
  src/
    theme/
      wireframe_theme.dart
    state/
      theme_controller.dart

Notes

    This package is UI/theme only.

    Keep app-specific features (permissions, SMS, contacts, etc.) in the app layer — not in this package.

    ThemeController uses shared_preferences to persist dark mode.

Versioning

Recommended:

    Create tags for releases: v1.0.0, v1.0.1, ...

    Point apps to a tag in pubspec.yaml.

License

Add a LICENSE file if you want to open source this package.