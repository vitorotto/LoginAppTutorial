import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_tutorial/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_app_tutorial/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      theme: VThemeApp.lightTheme,
      darkTheme: VThemeApp.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
