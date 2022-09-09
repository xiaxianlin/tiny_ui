import 'package:example/button.dart';
import 'package:flutter/material.dart';
import 'package:tiny_ui/tiny_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiny UI',
      theme: tinyTheme,
      home: const ButtonPage(),
    );
  }
}
