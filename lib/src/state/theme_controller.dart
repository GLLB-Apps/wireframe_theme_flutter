import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  ThemeController({
    required this.storageKey,
    bool defaultDark = false,
  }) : _isDarkMode = defaultDark;

  final String storageKey;
  bool _isDarkMode;

  bool get isDarkMode => _isDarkMode;

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool(storageKey) ?? _isDarkMode;
    notifyListeners();
  }

  Future<void> toggle() async {
    _isDarkMode = !_isDarkMode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(storageKey, _isDarkMode);
    notifyListeners();
  }
}
