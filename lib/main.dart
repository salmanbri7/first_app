import 'package:flutter/material.dart';
import 'GradientContainer.dart';

var color1 = Color.fromARGB(255, 5, 66, 5);
var color2 = Color.fromARGB(255, 53, 197, 173);
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1,
          coloroptional: color2,
        ),
      ),
    ),
  );
}
