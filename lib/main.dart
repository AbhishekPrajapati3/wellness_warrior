import 'package:flutter/material.dart';

import 'Screens/home.dart';
import 'Screens/readyTimer.dart';
import 'Screens/start_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wellness Warrior',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.pink),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

