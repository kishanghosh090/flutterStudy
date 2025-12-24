import 'package:dice_app/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.title});
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
                const Color.fromARGB(255, 61, 12, 70),
                const Color.fromARGB(255, 36, 21, 63),
                const Color.fromARGB(255, 46, 30, 74),
                const Color.fromARGB(255, 48, 11, 55),
              ],
            ),
          ),
          child: const Center(child: StyledText(title: "hello from kishan")),
        ),
      ),
    );
  }
}
