import 'package:flutter/material.dart';
import 'quote_screen.dart';
import 'gradient_container.dart';

void main() {
  runApp(const QuoteApp());
}

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          color1: Colors.blue,
          color2: Colors.purple,
          child: const QuoteScreen(),
        ),
      ),
    );
  }
}