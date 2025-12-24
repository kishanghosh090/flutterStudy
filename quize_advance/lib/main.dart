import 'package:flutter/material.dart';
import 'package:quize_advance/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 91, 16, 105),
            const Color.fromARGB(255, 49, 7, 65),
          ],
        ),
      ),
      child: const StartScreen(),
    );
  }
}
