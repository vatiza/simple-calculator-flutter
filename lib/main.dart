import 'package:flutter/material.dart';
import 'package:simple_calculator/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home_Page(),
    );
  }
}
