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
          // Opacity(
          //   opacity: 0.2,
          //   child: Image.asset("./assets/images/quiz-logo.png", width: 300),
          // ),
          Image.asset(
            "./assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(45, 255, 255, 255),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.arrow_right_alt, color: Colors.white),
            label: Text("Get Started", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
