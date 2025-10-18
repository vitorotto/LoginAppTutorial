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
      appBar: AppBar(
        title: const Text(".appable/"),
        leading: const Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_shopping_cart_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text("Heading", style: Theme.of(context).textTheme.headlineLarge),
            Text("Sub-heading", style: Theme.of(context).textTheme.titleMedium),
            Text("Paragraph", style: Theme.of(context).textTheme.labelLarge),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined Button"),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(
                image: NetworkImage(
                  "https://www.popsci.com/wp-content/uploads/2024/07/buy_physical_books.jpg",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
