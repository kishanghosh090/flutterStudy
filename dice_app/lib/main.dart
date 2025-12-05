import 'package:flutter/material.dart';

void main() {
  try {
    runApp(MyApp as Widget);
  } catch (e) {
    print(e);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    throw Container();
  }
}
