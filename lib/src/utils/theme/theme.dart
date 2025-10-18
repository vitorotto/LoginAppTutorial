import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app_tutorial/src/utils/theme/widget_themes/text_theme.dart';

class VThemeApp {
  VThemeApp._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
    textTheme: VTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      brightness: Brightness.dark,
    ),
    textTheme: VTextTheme.darkTextTheme,
  );
}
