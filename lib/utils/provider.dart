import 'package:flutter/material.dart';
import 'package:whatsappclone/utils/shared_preferences.dart';

class DarkThemeProvider extends ChangeNotifier {
  ThemePreferences _themePreferences = ThemePreferences();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  DarkThemeProvider() {
    _darkTheme = false;
    _themePreferences = ThemePreferences();
    getPreferences();
  }

  set darkTheme(bool value) {
    _darkTheme = value;
    _themePreferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _darkTheme = await _themePreferences.getTheme();
    notifyListeners();
  }
}
