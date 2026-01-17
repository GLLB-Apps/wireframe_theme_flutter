# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.4] - 2025-01-17

### Fixed
- Renamed main library file from `wireframe_theme_flutter.dart` to `wireframe_theme.dart` to match package name convention
- Ensures proper pub.dev package naming standards

## [1.0.3] - 2025-01-17

### Fixed
- Corrected .gitignore to properly include package source files
- Added .gitattributes for consistent line endings across platforms

### Changed
- Minor documentation improvements in README
- Updated package metadata for pub.dev publication

## [1.0.1] - 2025-01-17

### Changed
- Initial preparation for pub.dev publication

## [1.0.0] - 2025-01-17

### Added
- Initial release of wireframe_theme package
- `WireframeTheme` class with light and dark theme support
- `ThemeController` for persistent dark mode toggle via SharedPreferences
- IBM Plex Mono typography via Google Fonts
- Monochrome color scheme (black/white with grey accents)
- Wireframe aesthetic with bold borders and zero-radius corners
- Pre-styled components:
  - AppBar with wireframe styling
  - ElevatedButton and OutlinedButton with inverted colors
  - TextField with outlined borders
  - Card with wireframe borders
  - Typography scale (display, headline, body, label)
- Dark mode persistence using SharedPreferences
- Provider-based state management for theme toggling

### Features
- Color utilities: `getBackground()`, `getForeground()`, `getLightGrey()`
- Theme builder: `WireframeTheme.getTheme(bool isDarkMode)`
- Theme controller methods: `toggle()`, `setDarkMode(bool value)`, `init()`
- Custom storage key support for multi-app scenarios

### Dependencies
- `google_fonts: ^6.1.0` - IBM Plex Mono typography
- `provider: ^6.0.0` - State management for ThemeController
- `shared_preferences: ^2.0.0` - Dark mode persistence

### Documentation
- Comprehensive README with quick start guide
- CLI tool recommendation for scaffolding new projects
- Example code for common use cases
- Theme specifications and component styling details

[1.0.4]: https://github.com/GLLB-Apps/wireframe_theme/releases/tag/v1.0.4
[1.0.3]: https://github.com/GLLB-Apps/wireframe_theme/releases/tag/v1.0.3
[1.0.1]: https://github.com/GLLB-Apps/wireframe_theme/releases/tag/v1.0.1
[1.0.0]: https://github.com/GLLB-Apps/wireframe_theme/releases/tag/v1.0.0