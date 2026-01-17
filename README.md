# wireframe_theme

A minimalist Flutter theme package with a bold wireframe aesthetic. Features monochrome color schemes, IBM Plex Mono typography, and persistent dark mode support.

[![pub package](https://img.shields.io/pub/v/wireframe_theme.svg)](https://pub.dev/packages/wireframe_theme)

## Features

- 🎨 **Wireframe aesthetic** - Bold borders, monochrome colors, zero-radius corners
- 🔤 **IBM Plex Mono** - Professional monospace typography via Google Fonts
- 🌓 **Dark mode** - Built-in dark/light theme support with persistent storage
- 📦 **Ready to use** - Pre-configured ThemeData for consistent styling
- 🎯 **Minimal dependencies** - Only requires `google_fonts`, `provider`, and `shared_preferences`

## Getting Started

### Recommended: Use the CLI tool 🚀

The fastest way to start a new project with wireframe_theme is using our CLI scaffolding tool:
```bash
# Install the CLI tool globally
dart pub global activate flux_wireframe

# Create a new Flutter app with wireframe_theme pre-configured
flux_wireframe create my_app

# Navigate to your new app
cd my_app

# Run it!
flutter run
```

**What you get:**
- ✅ Flutter app with wireframe_theme already integrated
- ✅ ThemeController setup with Provider
- ✅ Dark mode toggle ready to use
- ✅ Sample screens and components
- ✅ All dependencies configured

[View CLI tool on GitHub →](https://github.com/GLLB-Apps/flux_wireframe-tool-CLI)

### Manual Installation

If you prefer to add wireframe_theme to an existing project:
```yaml
dependencies:
  wireframe_theme: ^1.0.0
```

Then run:
```bash
flutter pub get
```

## Quick Start

### 1. Setup in `main.dart`
```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wireframe_theme/wireframe_theme.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize theme controller with a unique storage key
  final theme = ThemeController(storageKey: 'my_app_isDarkMode');
  await theme.init();
  
  runApp(
    ChangeNotifierProvider.value(
      value: theme,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch();
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: WireframeTheme.getTheme(false),
      darkTheme: WireframeTheme.getTheme(true),
      themeMode: theme.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: const MyHomePage(),
    );
  }
}
```

### 2. Toggle theme anywhere in your app
```dart
// Toggle dark mode
context.read().toggle();

// Or set explicitly
context.read().setDarkMode(true);

// Read current state
final isDark = context.watch().isDarkMode;
```

### 3. Use theme colors in your widgets
```dart
final foreground = WireframeTheme.getForeground(isDarkMode);
final background = WireframeTheme.getBackground(isDarkMode);
final lightGrey = WireframeTheme.getLightGrey(isDarkMode);
```

## Theme Specifications

### Colors
- **Light mode**: Black text on white background
- **Dark mode**: White text on black background
- **Accent**: Grey (`#808080`)
- **Error**: Red (`#D32F2F`)

### Typography
- **Font**: IBM Plex Mono (via Google Fonts)
- **Weights**: 400 (regular), 500 (medium), 600 (semibold), 700 (bold)
- **Sizes**: 12-32px across display/headline/body/label styles

### Components
- **Borders**: 2px solid lines, 3px on focus
- **Radius**: 0 (sharp corners)
- **Elevation**: 0 (flat design)
- **Buttons**: Inverted colors with bold borders
- **Input fields**: Outlined style with monospace font

## Example
```dart
Scaffold(
  appBar: AppBar(
    title: const Text('Wireframe Theme'),
    actions: [
      IconButton(
        icon: const Icon(Icons.brightness_6),
        onPressed: () => context.read().toggle(),
      ),
    ],
  ),
  body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Hello, Wireframe!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {},
          child: const Text('PRIMARY BUTTON'),
        ),
        const SizedBox(height: 8),
        OutlinedButton(
          onPressed: () {},
          child: const Text('OUTLINED BUTTON'),
        ),
        const SizedBox(height: 16),
        TextField(
          decoration: const InputDecoration(
            labelText: 'Enter text',
            hintText: 'Type here...',
          ),
        ),
      ],
    ),
  ),
);
```

## Storage Key

Use a unique `storageKey` per app to avoid conflicts if multiple apps using this package share the same device storage:
```dart
final theme = ThemeController(storageKey: 'my_unique_app_theme');
```

## Resources

- 🛠️ [CLI Scaffolding Tool](https://github.com/GLLB-Apps/flux_wireframe-tool-CLI) - Quick start with pre-configured project
- 📦 [pub.dev Package](https://pub.dev/packages/wireframe_theme) - Latest version and documentation
- 💬 [GitHub Issues](https://github.com/yourusername/wireframe_theme/issues) - Report bugs or request features

## Dependencies

This package requires:
- `flutter`: SDK
- `google_fonts`: ^6.1.0
- `provider`: ^6.0.0
- `shared_preferences`: ^2.0.0

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Author

Created by [David](https://github.com/yourusername)