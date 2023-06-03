import 'package:flutter/material.dart';

const Alignment startAlignment = Alignment.topRight;
const Alignment endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.gradientColors});

  final List<Color> gradientColors;

  void rollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text(
                'Roll Dice',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
