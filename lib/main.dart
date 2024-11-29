import 'package:flutter/material.dart';
import 'welcome.dart';
import 'secondscreen.dart';
import 'output.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Country Info App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // Define routes for navigation
      routes: {
        '/': (context) =>  const WelcomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/output': (context) => const OutputScreen(
              country: {}, // Placeholder; this will be replaced during navigation
            ),
      },
      initialRoute: '/',
    );
  }
}
