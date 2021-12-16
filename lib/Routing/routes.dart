import 'package:flutter/material.dart';
import 'routing_constants.dart';
import 'package:quick_errand/Screens/screens.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final args = settings.arguments as Map<String, dynamic>?;

  switch (settings.name) {
    case SignUpRoute:
      return MaterialPageRoute(builder: (context) => const SignUp());
    // break;
    default:
      return MaterialPageRoute(builder: (context) => const Login());
  }
}
