import 'package:flutter/material.dart';

void main() {
  runApp(Material(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center());
  }
}
