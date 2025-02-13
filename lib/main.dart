import 'package:flutter/material.dart';
import 'package:flutter_application_2/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 78, 3, 94),
          Color.fromARGB(255, 82, 9, 150),
          // Split Widget Class GradientContainer
        ),
      ),
    ),
  );
}

// Color.fromARGB(255, 44, 3, 110), Color.fromARGB(255, 39, 8, 177)
