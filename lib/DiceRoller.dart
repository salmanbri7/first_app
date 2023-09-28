import 'package:flutter/material.dart';
import 'StyledText.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({
    super.key,
  });

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "images/dice-3.png";
  void rollDice() {
    var num = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = "images/dice-$num.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            // padding: EdgeInsets.only(20),
            foregroundColor: Colors.cyan,
          ),
          child: StyledText(),
        ),
      ],
    );
  }
}
