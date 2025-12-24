import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("./assets/images/quiz-logo.png", width: 300),
          SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: Text("Get Started")),
        ],
      ),
    );
  }
}
