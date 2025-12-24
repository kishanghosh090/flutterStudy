import 'dart:math';

import 'package:flutter/material.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
    : color1 = Colors.deepPurple,
      color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  int min = 1;

  int max = 6;

  var random = Random();

  late int diceValue;

  @override
  void initState() {
    super.initState();
    diceValue = min + random.nextInt((max - min) + 1);
  }

  // The formula is min + random.nextInt((max - min) + 1)
  int get value => diceValue;

  final images = [
    "assets/images/dice-1.png",
    "assets/images/dice-2.png",
    "assets/images/dice-3.png",
    "assets/images/dice-4.png",
    "assets/images/dice-5.png",
    "assets/images/dice-6.png",
  ];

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
                GradientContainer.purple().color1,
                GradientContainer.purple().color2,
              ],
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(images[value - 1], width: 200),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      diceValue = min + random.nextInt((max - min) + 1);
                    });
                  },
                  child: Text("Roll Dice"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
