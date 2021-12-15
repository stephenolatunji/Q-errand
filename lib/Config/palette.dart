import 'package:flutter/material.dart';

class Palette {
  static const Color boldLetter = Color.fromRGBO(98, 82, 109, 1);
  static const Color bodyTextColor = Color.fromRGBO(98, 82, 109, 0.8);
  static const Color faintText = Color.fromRGBO(98, 82, 109, 0.5);
  static const Color primaryColor = Color.fromRGBO(115, 44, 164, 1);
  static const Color secondaryColor = Color.fromRGBO(248, 162, 32, 1);
  static const Color warningColor = Color.fromRGBO(255, 28, 28, 1);
  static const Color greenColor = Color.fromRGBO(0, 167, 53, 1);
  static const Color supportGreenColor = Color.fromRGBO(44, 164, 135, 0.8);
  static const Color aboutBrownColor = Color.fromRGBO(164, 123, 44, 0.8);
  static const Color passwordGreenColor = Color.fromRGBO(68, 164, 44, 0.8);
  static const Color savedAddressColor = Color.fromRGBO(164, 44, 94, 0.8);
  static const LinearGradient buttonGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [
        0.0,
        1.0
      ],
      colors: [
        Color.fromRGBO(115, 44, 164, 1),
        Color.fromRGBO(140, 98, 169, 1),
      ]);
}
