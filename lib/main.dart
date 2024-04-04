import 'package:clone_coding_flutter/01_youtube_clone_coding/presentation/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// git push test

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}