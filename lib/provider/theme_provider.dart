import 'package:chat_app/main.dart';
import 'package:chat_app/themes/dark_mode.dart';
import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  SharedPreferences? sharedPreferences;
  bool isDark = false;

  void setTheme() {
    isDark = !isDark;
    setSharedPreferences(isDark);
    notifyListeners();
  }

  Future<void> setSharedPreferences(bool value) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences!.setBool('theme', value);
  }

  ThemeProvider(bool theme){
    isDark = theme;
  }
}
