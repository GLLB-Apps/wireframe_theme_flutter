import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wireframe_theme/wireframe_theme.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('WireframeTheme builds ThemeData', () {
    final light = WireframeTheme.getTheme(false);
    final dark = WireframeTheme.getTheme(true);

    expect(light, isNotNull);
    expect(dark, isNotNull);
    expect(light.scaffoldBackgroundColor,
        isNot(equals(dark.scaffoldBackgroundColor)));
  });

  test('ThemeController persists and toggles dark mode', () async {
    SharedPreferences.setMockInitialValues({});

    final controller = ThemeController(storageKey: 'isDarkMode_test');
    await controller.init();
    expect(controller.isDarkMode, false);

    await controller.toggle();
    expect(controller.isDarkMode, true);

    final controller2 = ThemeController(storageKey: 'isDarkMode_test');
    await controller2.init();
    expect(controller2.isDarkMode, true);
  });
}
