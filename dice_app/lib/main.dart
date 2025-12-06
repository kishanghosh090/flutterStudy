import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(title: 'hello form chai code'),
    ),
  );
}

// isActive
class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        // appBar: AppBar(),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topCenter,
              colors: [
                Colors.teal,
                Colors.transparent,
                Colors.redAccent,
                Colors.pinkAccent,
              ],
            ),
          ),
          child: const Center(
            child: Text(" hello from chai", style: TextStyle()),
          ),
        ),
      ),
    );
  }
}
