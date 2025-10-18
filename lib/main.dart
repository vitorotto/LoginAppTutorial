import 'package:flutter/material.dart';
import 'package:login_app_tutorial/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AppHome(),
      theme: VThemeApp.lightTheme,
      darkTheme: VThemeApp.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(title: Text("./appable"),),
      body: Center(child: Text("Home page"),),
    );
  }
}
