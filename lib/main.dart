import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  // debugPaintSizeEnabled = true;
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
