import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  final darktheme = ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: Colors.black,
      buttonColor: Colors.grey,
      brightness: Brightness.dark,
      dividerColor: Colors.black12,
      accentColor: Colors.white);

  final lighttheme = ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: Colors.white,
      buttonColor: Colors.grey,
      brightness: Brightness.light,
      backgroundColor: const Color(0xFFE5E5E5),
      dividerColor: Colors.white54,
      accentColor: Colors.black);

  final redtheme = ThemeData(
      primarySwatch: Colors.red,
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.red,
          textTheme: ButtonTextTheme.normal,
          colorScheme: ColorScheme.light()),
      primaryColor: Colors.red,
      buttonColor: Colors.red,
      brightness: Brightness.light,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.red,
        ),
        bodyText2: TextStyle(
          color: Colors.red,
        ),
      ).apply(
        bodyColor: Colors.red,
        displayColor: Colors.red,
      ),
      backgroundColor: const Color(0xFFE5E5E5),
      dividerColor: Colors.red,
      accentColor: Colors.red);

  final bluetheme = ThemeData(
      primarySwatch: Colors.blue,
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.normal,
          colorScheme: ColorScheme.light()),
      primaryColor: Colors.blue,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.blue,
        ),
        bodyText2: TextStyle(
          color: Colors.blue,
        ),
      ).apply(
        bodyColor: Colors.blue,
        displayColor: Colors.blue,
      ),
      buttonColor: Colors.blue,
      brightness: Brightness.light,
      backgroundColor: const Color(0xFFE5E5E5),
      dividerColor: Colors.blue,
      accentColor: Colors.blue);

  late ThemeData theme;
  ThemeData getTheme() => theme;
  ThemeNotifier() {
    theme = lighttheme;
  }

  void dark() async {
    theme = darktheme;
    notifyListeners();
  }

  void light() async {
    theme = lighttheme;
    notifyListeners();
  }

  void red() async {
    theme = redtheme;
    notifyListeners();
  }

  void blue() async {
    theme = bluetheme;
    notifyListeners();
  }
}
