import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import 'StyledText.dart ';
import 'DiceRoller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    color1, {
    super.key,
    this.coloroptional = Colors.deepPurple,
  });
  final Color coloroptional;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            coloroptional,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
